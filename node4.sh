cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.104 -p 8100 -c spines_int.conf &
cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.104 -p 8120 -c spines_ext.conf &
cd /thegrid/prime/bin; sudo ./prime -i 4 &
cd /thegrid/scada_master; sudo ./scada_master 4 192.168.101.104:8100 192.168.101.104:8120  &