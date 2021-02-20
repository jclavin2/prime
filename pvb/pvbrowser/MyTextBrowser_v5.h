/***************************************************************************
                          MyTextBrowser_v5.h  -  description
                             -------------------
    begin                : Fri Jan 15 2016
    copyright            : (C) 2000 by R. Lehrig
                         : M. Bangieff
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
#ifndef _MY_TEXTBROWSER_V5_H_
#define _MY_TEXTBROWSER_V5_H_

//#define MY_NO_WEBKIT

#include <QMouseEvent>
#include <QTextBrowser>
#include <QPrinter>
#ifndef MY_NO_WEBKIT
#include <QWebEngineView>
#include <QWebEnginePage>
//todo: will come in 5.6  #include <QWebEngineUrlRequestInterceptor>
#endif

#ifdef MY_NO_WEBKIT
class MyTextBrowser : public QTextBrowser
#else
class MyTextBrowser : public QWebEngineView
#endif
{
    Q_OBJECT
public:
    MyTextBrowser(int *sock, int ident, QWidget * parent=0, const char * name=0);
    ~MyTextBrowser();
    virtual bool event(QEvent *e);
    void moveContent(int pos);
    void setHTML(QString &text);
    void htmlOrSvgDump(const char *filename);
    void tbSetText(QString &text);
    void tbMoveCursor(int cur);
    void tbScrollToAnchor(QString &text);
    void setSOURCE(QString &temp, QString &text);
    void setZOOM_FACTOR(int factor);
    void PRINT(QPrinter *printer);
    QString home;
    int homeIsSet;
    QString mHeader;
    QString mStyle;
    int xOldScroll, yOldScroll;

    void slotLinkClicked(const QUrl &link);
public slots:
    void slotUrlChanged(const QUrl &link);
    void slotLoadFinished(bool ok);
    void slotPRINTER();

protected:
#ifdef MY_NO_WEBKIT
#else
    virtual QWebEngineView *createWindow(QWebEnginePage::WebWindowType type);
#endif    
    virtual void contextMenuEvent(QContextMenuEvent *event);
    virtual void keyPressEvent(QKeyEvent *event);
  
private:
    virtual void mousePressEvent(QMouseEvent *event);
    virtual void mouseReleaseEvent(QMouseEvent *event);
    virtual void enterEvent(QEvent *event);
    virtual void leaveEvent(QEvent *event);
    int *s,id;
    float factor;
    QPoint pressPos;
    //todo: will come in 5.6 QWebEngineUrlRequestInterceptor *urlRequestInterceptor;
};

#ifdef MY_NO_WEBKIT
#else
class MyWebEnginePage : public QWebEnginePage
{
    Q_OBJECT
public:
    MyWebEnginePage(int *sock, int ident, MyTextBrowser *myView, QObject *parent=0);
    ~MyWebEnginePage();
protected:    
    virtual bool acceptNavigationRequest(const QUrl &url, NavigationType type, bool isMainFrame);
private:
    int *s,id;
    MyTextBrowser *my_view;
};
#endif

#endif
