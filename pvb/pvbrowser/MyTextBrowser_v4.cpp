/***************************************************************************
                          MyTextBrowser_v4.cpp  -  description
                             -------------------
    begin                : Fr Jan 15 2016
    copyright            : (C) 2000 by R. Lehrig
    email                : lehrig@t-online.de
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
#include "pvdefine.h"
#include "pvserver.h"
#include <stdio.h>
#include <ctype.h>
#include <sys/stat.h>
#include "opt.h"
#include "mainwindow.h"
#include "interpreter.h"

#include "qtabbar.h"
#include "qpainter.h"
#include "qmessagebox.h"
#include <QPixmap>
#include <QMouseEvent>
#include <QPrintDialog>
#ifndef NO_WEBKIT
#include <QWebView>
#include <QWebHistory>
#include <QWebFrame>
#endif
#include "tcputil.h"
#include "MyTextBrowser_v4.h"

extern OPT opt;

extern QString l_file;
extern QString l_options;
extern QString l_new_window;
extern QString l_reconnect;
extern QString l_save_as_bmp;
extern QString l_log_as_bmp;
extern QString l_log_as_pvm;
extern QString l_print;
extern QString l_new_tab;
extern QString l_delete_tab;
extern QString l_exit;
extern QString l_edit;
extern QString l_copy;
extern QString l_copy_plus_title;
extern QString l_view;
extern QString l_editmenu;
extern QString l_toolbar;
extern QString l_statusbar;
extern QString l_maximized;
extern QString l_fullscreen;
extern QString l_help;
extern QString l_manual;
extern QString l_about;

extern QString l_status_connection_lost;
extern QString l_status_connected;
extern QString l_status_could_not_connect;
extern QString l_status_reconnect;
extern QString l_status_options;
extern QString l_status_new_window;
extern QString l_status_save_as_bmp;
extern QString l_status_log_as_bmp;
extern QString l_status_log_as_pvm;
extern QString l_status_print;
extern QString l_status_new_tab;
extern QString l_status_exit;
extern QString l_status_copy;
extern QString l_status_editmenu;
extern QString l_status_toolbar;
extern QString l_status_statusbar;
extern QString l_status_toggle_maximized;
extern QString l_status_toggle_full_screen;
extern QString l_status_manual;
extern QString l_status_about;

extern QString l_print_header;

static const char *decode(QString text)
{
  static char buf[MAX_PRINTF_LENGTH];
  int maxlen = MAX_PRINTF_LENGTH - 1;

  if(opt.codec == pvbUTF8)
  {
    strncpy(buf, text.toUtf8(), maxlen);
  }
  else
  {
#if QT_VERSION < 0x050000 
    strncpy(buf, text.toAscii(), maxlen);
#endif    
  }
  buf[maxlen-1] = '\0';
  return buf;
}

////////////////////////////////////////////////////////////////////////////////
MyTextBrowser::MyTextBrowser(int *sock, int ident, QWidget *parent, const char *name)
#ifdef NO_WEBKIT
              :QTextBrowser(parent)
#else
              :QWebView(parent)
#endif
{
  s = sock;
  id = ident;
  homeIsSet = 0;
  factor = 1.0f;
  if(name != NULL) setObjectName(name);
  mHeader = "<html>\n<head><meta charset=\"utf-8\">\n<title>MyTextBrowser</title>\n</head><body>\n";
  xOldScroll = yOldScroll = 0;
#ifdef NO_WEBKIT
  setOpenLinks(false);
  connect(this, SIGNAL(anchorClicked(const QUrl &)), SLOT(slotLinkClicked(const QUrl &)));
  //connect(this, SIGNAL(urlChanged(const QUrl &)), SLOT(slotUrlChanged(const QUrl &)));
#else
  page()->setLinkDelegationPolicy(QWebPage::DelegateAllLinks);
  connect(this, SIGNAL(linkClicked(const QUrl &)), SLOT(slotLinkClicked(const QUrl &)));
  connect(this, SIGNAL(loadFinished(bool)), SLOT(slotLoadFinished(bool)));
  //connect(this, SIGNAL(urlChanged(const QUrl &)), SLOT(slotUrlChanged(const QUrl &)));
  //enabling plugins leads to problems
  //see: https://bugs.webkit.org/show_bug.cgi?id=56552 that we have reported
  if(opt.enable_webkit_plugins)
  {
    if(opt.arg_debug) printf("enable_webkit_plugins\n");
    settings()->setAttribute(QWebSettings::PluginsEnabled, true);
    settings()->setAttribute(QWebSettings::JavascriptEnabled, true);
  }
  else
  {
    if(opt.arg_debug) printf("do not enable_webkit_plugins\n");
    settings()->setAttribute(QWebSettings::PluginsEnabled, false);
    settings()->setAttribute(QWebSettings::JavascriptEnabled, false);
  }
  setContextMenuPolicy(Qt::DefaultContextMenu);
#ifdef USE_MAEMO  
  QString    txt("data:text/css;charset=utf-8;base64,");
  QByteArray css("body { -webkit-user-select: none; }"); // -webkit-touch-callout: none;
  txt += css.toBase64();
  settings()->setUserStyleSheetUrl(QUrl(txt));
#endif  
#endif  
}

MyTextBrowser::~MyTextBrowser()
{
}

void MyTextBrowser::tbSetText(QString &text)
{
#ifdef NO_WEBKIT            
  int vPos = verticalScrollBar()->value();   // make cursor not jumping (ernst murnleitner)
  int hPos = horizontalScrollBar()->value();
  QTextDocument *doc = document();
  if(doc != NULL) doc->setHtml(text); // ,url);
  verticalScrollBar()->setValue(vPos);
  horizontalScrollBar()->setValue(hPos);
#else              
  if(page() != NULL && page()->mainFrame() != NULL)
  {
    xOldScroll = page()->mainFrame()->scrollBarValue(Qt::Horizontal);
    yOldScroll = page()->mainFrame()->scrollBarValue(Qt::Vertical);
  }
  setHTML(text);
#endif          
}

void MyTextBrowser::tbMoveCursor(int cur)
{
#ifdef NO_WEBKIT      
  moveCursor((QTextCursor::MoveOperation) cur);
#else
  if     (cur == PV::NoMove)            pageAction(QWebPage::NoWebAction);
  else if(cur == PV::StartOfLine)       pageAction(QWebPage::MoveToStartOfLine);
  else if(cur == PV::StartOfBlock)      pageAction(QWebPage::MoveToStartOfBlock);
  //else if(cur == PV::StartOfWord)       ;
  else if(cur == PV::PreviousBlock)     pageAction(QWebPage::QWebPage::MoveToPreviousLine);
  else if(cur == PV::PreviousCharacter) pageAction(QWebPage::MoveToPreviousChar);
  else if(cur == PV::PreviousWord)      pageAction(QWebPage::MoveToPreviousWord);
  else if(cur == PV::Up)                pageAction(QWebPage::MoveToStartOfDocument); // ???
  //else if(cur == PV::Left)              ;
  //else if(cur == PV::WordLeft)          ;
  else if(cur == PV::End)               pageAction(QWebPage::MoveToEndOfDocument);
  else if(cur == PV::EndOfLine)         pageAction(QWebPage::MoveToEndOfLine);
  //else if(cur == PV::EndOfWord)         ;
  else if(cur == PV::EndOfBlock)        pageAction(QWebPage::MoveToEndOfBlock);
  else if(cur == PV::NextBlock)         pageAction(QWebPage::QWebPage::MoveToNextLine);
  else if(cur == PV::NextCharacter)     pageAction(QWebPage::MoveToNextChar);
  else if(cur == PV::NextWord)          pageAction(QWebPage::MoveToNextWord);
  else if(cur == PV::Down)              pageAction(QWebPage::MoveToEndOfDocument); // ???
  //else if(cur == PV::Right)             ;
  //else if(cur == PV::WordRight)         ;
#endif
}

void MyTextBrowser::tbScrollToAnchor(QString &text)
{
#ifdef NO_WEBKIT
  scrollToAnchor(text);
#else
  QWebPage *pageptr = page();
  if(pageptr != NULL)
  {
    pageptr->currentFrame()->scrollToAnchor(text);
  }
#endif
}

bool MyTextBrowser::event(QEvent *e)
{
#if QT_VERSION >= 0x040600
  if(e->type() == QEvent::Gesture)
  {
    QGestureEvent *ge = static_cast<QGestureEvent*>(e);
    if(ge->gesture(Qt::PinchGesture)) return false;
  }
#endif
#ifdef NO_WEBKIT
  return QTextBrowser::event(e);
#else  
  return QWebView::event(e);
#endif  
}

void MyTextBrowser::contextMenuEvent(QContextMenuEvent *event)
{
  QMenu menu(this);
  QAction *printAct = menu.addAction("Print");
  connect(printAct, SIGNAL(triggered()), this, SLOT(slotPRINTER()));
  menu.exec(event->globalPos());
}

void MyTextBrowser::keyPressEvent(QKeyEvent *event)
{
#ifdef NO_WEBKIT
  if(event->matches(QKeySequence::ZoomIn))
  {
    factor = factor*1.1f;
    zoomIn();
  }
  else if(event->matches(QKeySequence::ZoomOut))
  {
    factor = factor*0.9f;
    zoomOut();
  }
  else
  {
    QTextBrowser::keyPressEvent(event);
  }
#else
  if(event->matches(QKeySequence::ZoomIn))
  {
    factor = factor*1.1f;
#if QT_VERSION >= 0x040500
    setZoomFactor(factor);
#endif    
  }
  else if(event->matches(QKeySequence::ZoomOut))
  {
    factor = factor*0.9f;
#if QT_VERSION >= 0x040500
    setZoomFactor(factor);
#endif    
  }
  else
  {
    QWebView::keyPressEvent(event);
  }
#endif
}

#ifdef NO_WEBKIT
#else
QWebView *MyTextBrowser::createWindow(QWebPage::WebWindowType type)
{
  QWebHitTestResult r = page()->mainFrame()->hitTestContent(pressPos);
  if(!r.linkUrl().isEmpty() && type == QWebPage::WebBrowserWindow) 
  {
    QString cmd = opt.newwindow;
    if(cmd.isEmpty()) cmd = "pvbrowser";
    cmd += " \"";
    cmd += r.linkUrl().toString();;
    cmd += "\"";
#ifdef PVUNIX
    //cmd += " &";
    int ret = system(cmd.toUtf8());
#endif
#ifdef PVWIN32
    int ret = mysystem(cmd.toUtf8());
#endif
    if(ret < 0) printf("ERROR system(%s)", (const char *) cmd.toUtf8());
  }
  return NULL;
}
#endif

void MyTextBrowser::moveContent(int pos)
{
  if(pos >= '\t' || pos < 0)
  {
     activateWindow();
     char text[16];
     text[0] = pos & 0x0ff;
     text[1] = '\0';
     int modifiers = pos & 0x07fffff00;
     int key = pos & 0x0ff;
     if     ((pos & 0x0ff) == '\t') key = Qt::Key_Tab;
     else if((pos & 0x0ff) == 0x0d) key = Qt::Key_Return;
     QKeyEvent pressEvent(  QEvent::KeyPress,   (Qt::Key) key, (Qt::KeyboardModifiers) modifiers, text);
     QKeyEvent releaseEvent(QEvent::KeyRelease, (Qt::Key) key, (Qt::KeyboardModifiers) modifiers, text);
     if((pos & 0x0ff) == '\t') QWidget::setFocus(Qt::TabFocusReason);
     keyPressEvent(&pressEvent);
     keyReleaseEvent(&releaseEvent);
     return;
  }
#ifdef NO_WEBKIT
  char buf[MAX_PRINTF_LENGTH];
  QString myurl;

  if(opt.arg_debug) printf("moveContent(%d)\n", pos);
  if     (pos == 0 && homeIsSet) 
  { 
    myurl = home; 
    setSource(QUrl(home)); 
  }
  else if(pos == 1)              
  { 
    forward();
    myurl = source().path();
  }  
  else if(pos == 2) 
  {
    backward();
    myurl = source().path();
  }  
  else if(pos == 3) 
  {
    reload();
    myurl = source().path();
  }  
#else
  char buf[MAX_PRINTF_LENGTH];
  QString myurl;
  QWebHistory *hist;

  if(opt.arg_debug) printf("moveContent(%d)\n", pos);
  if     (pos == 0 && homeIsSet) 
  { 
    myurl = home; 
    load(home); 
  }
  else if(pos == 1)              
  { 
    hist = history();
    if(hist != NULL && hist->canGoForward()) myurl = hist->forwardItem().url().toString(); 
    forward();
  }  
  else if(pos == 2) 
  {
    hist = history();
    if(hist != NULL && hist->canGoBack()) myurl = hist->backItem().url().toString(); 
    back();
  }  
  else if(pos == 3) 
  {
    hist = history();
    if(hist != NULL) myurl = hist->currentItem().url().toString(); 
    reload();
  }  
#endif

  if(myurl.isEmpty()) return;
  if(opt.arg_debug) printf("moveContent(%s)\n", (const char *) myurl.toUtf8());
  if(myurl.length()+40 > MAX_PRINTF_LENGTH) return;
  sprintf(buf,"text(%d,\"%s\")\n", id,decode(myurl));
  tcp_send(s,buf,strlen(buf));
}

void MyTextBrowser::setHTML(QString &text)
{
  int i;

  // replace href="/any_string" (href to file starting from root directory) by href="awite://any_string"
  while(1)
  {
    i = text.indexOf("href=\"/");
    if(i < 0) break;
    text = text.replace(i,7,"href=\"awite://");
  }

  if(opt.arg_debug) printf("MyTextBrowser::setHTML:: %s\n", (const char *) text.toUtf8());
  QString base;
  base.sprintf("file://%s", opt.temp);
#ifndef NO_WEBKIT  
  QWebSettings::clearMemoryCaches();
#endif  
#ifdef NO_WEBKIT  
  setHtml(text);
#else
  setHtml(text,QUrl(base));
#endif
}

void MyTextBrowser::htmlOrSvgDump(const char *filename)
{
#ifdef NO_WEBKIT
  FILE *fout = fopen(filename,"w");
  if(fout == NULL)
  {
    printf("could not write %s\n", filename);
    return;
  }
  QString xml = toHtml();
  fputs(xml.toUtf8(), fout);
  fclose(fout);
#else
  QWebPage *p = page();
  if(p == NULL) return;
  QWebFrame *f = p->currentFrame();
  if(f == NULL) return;

  FILE *fout = fopen(filename,"w");
  if(fout == NULL)
  {
    printf("could not write %s\n", filename);
    return;
  }
  QString xml = f->toHtml();
  fputs(xml.toUtf8(), fout);
  fclose(fout);
#endif  
}

void MyTextBrowser::slotLinkClicked(const QUrl &link)
{
  char buf[MAX_PRINTF_LENGTH];
  QString url;
  int i;

  url = link.toString();

  // replace "href=\"//awite://" by "href=/"
  while(1)
  {
    i = url.indexOf("awite://");
    if(i < 0) break;
    url = url.replace(i,8,"/");
    if(opt.arg_debug) printf("MyTextBrowser::slotLinkClicked::link clicked = %s\n", (const char *) url.toUtf8());
  }

  if(opt.arg_debug) printf("slotLinkClicked(%s)\n", (const char *) url.toUtf8());
  if(url.startsWith("http://") && (url.endsWith(".pdf") || url.endsWith(".PDF")))
  {
    QString cmd = opt.view_pdf;
    cmd += " ";
    url.replace(" ","%20");
    cmd += url;
//#ifndef PVWIN32
//    cmd +=  " &";
//#endif
    mysystem(cmd.toUtf8());
  }
  else if(
         !url.startsWith("http://audio.") &&
          url.startsWith("http://") && (
          url.endsWith(".mp3",  Qt::CaseInsensitive) || 
          url.endsWith(".ogg",  Qt::CaseInsensitive) || 
          url.endsWith(".m3u",  Qt::CaseInsensitive) || 
          url.endsWith(".asx",  Qt::CaseInsensitive) || 
          url.contains(".pls?", Qt::CaseInsensitive) ||
          url.contains("mp3e",  Qt::CaseInsensitive) ||
          url.startsWith("http://www.youtube.com/watch?") ))
  {
    QString cmd = opt.view_audio;
    cmd += " ";
    url.replace(" ","%20");
    cmd += url;
//#ifndef PVWIN32
//    cmd +=  " &";
//#endif
    mysystem(cmd.toUtf8());
  }
  else if(
         !url.startsWith("http://video.") &&
          url.startsWith("http://") && (
          url.endsWith(".mp4",  Qt::CaseInsensitive) || 
          url.endsWith(".mov",  Qt::CaseInsensitive) || 
          url.endsWith(".ogv",  Qt::CaseInsensitive) || 
          url.endsWith(".avi",  Qt::CaseInsensitive) ))
  {
    QString cmd = opt.view_video;
    cmd += " ";
    url.replace(" ","%20");
    cmd += url;
//#ifndef PVWIN32
//    cmd +=  " &";
//#endif
    mysystem(cmd.toUtf8());
  }
  else
  {
    if(url.length()+40 > MAX_PRINTF_LENGTH) return;
    sprintf(buf,"text(%d,\"%s\")\n", id,decode(url));
    tcp_send(s,buf,strlen(buf));
#ifdef NO_WEBKIT
    if     (url.startsWith("http:"))  setSource(QUrl(url));
    else if(url.startsWith("https:")) setSource(QUrl(url));
    else if(!url.contains("://"))     setSource(QUrl(url));
#else    
    load(link);
#endif    
  }  
}

void MyTextBrowser::slotUrlChanged(const QUrl &link)
{
  char buf[MAX_PRINTF_LENGTH];
  QString url;

  url = link.toString();
  if(opt.arg_debug) printf("slotUrlChanged(%s)\n", (const char *) url.toUtf8());
  if(url.length()+40 > MAX_PRINTF_LENGTH) return;
  sprintf(buf,"text(%d,\"%s\")\n", id,decode(url));
  tcp_send(s,buf,strlen(buf));
}

void MyTextBrowser::slotLoadFinished(bool ok)
{
  if(ok)
  {
#ifndef NO_WEBKIT  
    page()->mainFrame()->setScrollBarValue(Qt::Horizontal,xOldScroll);
    page()->mainFrame()->setScrollBarValue(Qt::Vertical,yOldScroll);
#endif    
  }  
}

void MyTextBrowser::mousePressEvent(QMouseEvent *event)
{
  char buf[80];

  if(event == NULL) return;
  pressPos = event->pos();
  sprintf(buf,"QPushButtonPressed(%d) -xy=%d,%d\n",id, event->x(), event->y());
  tcp_send(s,buf,strlen(buf));
#ifdef NO_WEBKIT
  QTextBrowser::mousePressEvent(event);
#else
  QWebView::mousePressEvent(event);
#endif  
}

void MyTextBrowser::mouseReleaseEvent(QMouseEvent *event)
{
  char buf[80];

  if(event == NULL) return;
  sprintf(buf,"QPushButtonReleased(%d) -xy=%d,%d\n",id, event->x(), event->y());
  if(underMouse()) tcp_send(s,buf,strlen(buf));
#ifdef NO_WEBKIT
  QTextBrowser::mouseReleaseEvent(event);
#else
  QWebView::mouseReleaseEvent(event);
#endif  
}

void MyTextBrowser::enterEvent(QEvent *event)
{
  char buf[100];
  sprintf(buf, "mouseEnterLeave(%d,1)\n",id);
  tcp_send(s,buf,strlen(buf));
#ifdef NO_WEBKIT
  QTextBrowser::enterEvent(event);
#else
  QWebView::enterEvent(event);
#endif  
}

void MyTextBrowser::leaveEvent(QEvent *event)
{
  char buf[100];
  sprintf(buf, "mouseEnterLeave(%d,0)\n",id);
  tcp_send(s,buf,strlen(buf));
#ifdef NO_WEBKIT
  QTextBrowser::leaveEvent(event);
#else
  QWebView::leaveEvent(event);
#endif  
}

//###################################################################################

void MyTextBrowser::setSOURCE(QString &temp, QString &text)
{
#ifdef NO_WEBKIT            
  setSource(QUrl::fromLocalFile(temp + text));
  reload();
#else
  //xmurx#ifdef USE_ANDROID
  // android permission problems
  // google does not allow Qt to access local storage
  // see: http://www.techjini.com/blog/2009/01/10/android-tip-1-contentprovider-accessing-local-file-system-from-webview-showing-image-in-webview-using-content/
  //      http://groups.google.com/group/android-developers/msg/45977f54cf4aa592
  if(strstr(text.toUtf8(),"://") == NULL)
  {
    struct stat sb;
    if(stat(text.toUtf8(), &sb) < 0) return;
    char buf[sb.st_size+1];
    FILE *fin = fopen(text.toUtf8(),"r");
    if(fin == NULL) return;
    fread(buf,1,sb.st_size,fin);
    buf[sb.st_size] = '\0';
    fclose(fin);
    QUrl url = QUrl::fromLocalFile(temp);
#ifdef QWEBKITGLOBAL_H
    QWebSettings::clearMemoryCaches();
#endif
    setHtml(QString::fromUtf8(buf),url);
  }
  else
  {
    load(QUrl(text));
  }
//xmurx#else
//xmurx              t->load(QUrl(text));
//xmurx#endif
#endif
  if(homeIsSet == 0)
  {
    home      = text;
    homeIsSet = 1;
    if(opt.arg_debug) printf("home=%s\n", (const char *) text.toUtf8());
  }
}

void MyTextBrowser::setZOOM_FACTOR(int factor)
{
#ifdef NO_WEBKIT
  if(factor > 1) zoomIn();
  else           zoomOut();
#else
  setZoomFactor(factor);
#endif
}

void MyTextBrowser::PRINT(QPrinter *printer)
{
  if(printer == NULL) return;
  if(opt.arg_debug)printf("in PRINT printer\n");
//#ifdef MY_NO_WEBKIT
//render(printer);
//#else
//#endif
  printer->setOutputFormat(QPrinter::PdfFormat);
  print(printer);
  printer->newPage();
}

void MyTextBrowser::slotPRINTER()
{
  QPrinter printer;
  printer.setColorMode(QPrinter::Color);
  QPrintDialog dialog(&printer);
  if (dialog.exec() == QDialog::Accepted)
  {
    PRINT(&printer);
  } 
}

