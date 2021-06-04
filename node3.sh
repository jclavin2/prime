cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.103 -p 8100 -c spines_int.conf &
cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.103 -p 8120 -c spines_ext.conf &
cd /thegrid/prime/bin; sudo ./prime -i 3 &
cd /thegrid/scada_master; sudo ./scada_master 3 192.168.101.103:8100 192.168.101.103:8120 &