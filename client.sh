cd /thegrid/benchmark; sudo ./benchmark 1 192.168.101.107:8120 100 1

 cd proxy; ./proxy id SPINES_RTU_ADDR:SPINES_EXT_PORT 1

 cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.107 -p 8120 -c spines_ext.conf 

  cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.108 -p 8120 -c spines_ext.conf 



#The commands to generate benchamark test and then download the file. 
cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.107 -p 8120 -c spines_ext.conf 

cd /thegrid/benchmark; sudo ./benchmark 1 192.168.101.107:8120 1000000 100  > $HOME/benchmark1_debug.txt
cd /thegrid/benchmark; sudo ./benchmark 2 192.168.101.107:8120 1000000 100  > $HOME/benchmark2.txt
cd /thegrid/benchmark; sudo ./benchmark 3 192.168.101.107:8120 1000000 100  > $HOME/benchmark3.txt



scp -p 22 jclavin@hp074.utah.cloudlab.us:/users/jclavin/benchmark1.txt ./

scp -p 22 jclavin@hp070.utah.cloudlab.us:/users/jclavin/*.txt ./

#kill all processes with the word benchmark in them:
sudo pkill -f 'benchmark'