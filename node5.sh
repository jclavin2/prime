cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.105 -p 8100 -c spines_int.conf &
cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.105 -p 8120 -c spines_ext.conf &
cd /thegrid/prime/bin; sudo ./prime -i 5 &
cd /thegrid/scada_master; sudo ./scada_master 5 192.168.101.105:8100 192.168.101.105:8120 &