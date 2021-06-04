cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.106 -p 8100 -c spines_int.conf &
cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.106 -p 8120 -c spines_ext.conf &
cd /thegrid/prime/bin; sudo ./prime -i 6 &
cd /thegrid/scada_master; sudo ./scada_master 6 192.168.101.106:8100 192.168.101.106:8120 &