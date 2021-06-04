cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.101 -p 8100 -c spines_int.conf &
cd /thegrid/spines/daemon; sudo ./spines -I 192.168.101.101 -p 8120 -c spines_ext.conf &
cd /thegrid/prime/bin; sudo ./prime -i 1 > $HOME/non_delay_phases.txt
cd /thegrid/scada_master; sudo ./scada_master 1 192.168.101.101:8100 192.168.101.101:8120 &


cd /thegrid/prime/bin; sudo ./prime -i 1 | grep  GMLC