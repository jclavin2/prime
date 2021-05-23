import time
import threading
import os

#from ..threshenc.tdh2 import encrypt,decrypt

#File history
#   Person              Date                        Description
#   James Clavin        December 22, 2018           Issue #46.  Created.
#   James Clavin        December 25, 2018           Issue #46.  Update the config file.
#   James Clavin        April 27, 2019.             Converted BFTClient.py to a class
#   James Clavin        August 18, 2019.            Issue #68.  Multi-user.  Pass in user to constructor.



print("DEBUG********************************************* Starting *****")

for i in range (1, 101):  #loop through 100 clients
        print("DEBUG********************************************* Iterating through clients.  i is:  " + str(i)  )

        cmd = "cd /thegrid/benchmark; sudo ./benchmark " + str(i) + " 192.168.101.107:8120 1000000 100  > $HOME/benchmark_client_" + str(i) + ".txt &"
        os.system(cmd)
print("DEBUG********************************************* Finished *****")