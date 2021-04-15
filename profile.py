# Import the Portal object.
import geni.portal as portal
# Import the ProtoGENI library.
import geni.rspec.pg as pg
# Import the Emulab specific extensions.
import geni.rspec.emulab as emulab

# Create a portal context.
pc = portal.Context()

# Create a Request object to start building the RSpec.
request = pc.makeRequestRSpec()

#disk_image = "urn:publicid:IDN+emulab.net+image+emulab-ops:CENTOS8-64-STD"; #centos 8.
#disk_image = "urn:publicid:IDN+emulab.net+image+ByzantineGridSec:Prime6.node0" #centos 8 with prime
#disk_image = "urn:publicid:IDN+apt.emulab.net+image+byzantinegridsec-PG0:Prime12.node1" #centos 8 with prime configured for 6 nodes, 1 PLC/RTU, 1 HMI
#disk_image = "urn:publicid:IDN+apt.emulab.net+image+byzantinegridsec-PG0:Prime14.node1" #centos 8 with prime configured for 6 nodes, 1 PLC/RTU, 1 HMI with 512 bit keys.
#disk_image = "urn:publicid:IDN+apt.emulab.net+image+byzantinegridsec-PG0:Prime15.node1" #centos 8 with prime configured for 6 nodes tuned for LAN and with alerts. 
#disk_image = "urn:publicid:IDN+apt.emulab.net+image+byzantinegridsec-PG0:Prime18.node1" #centos 8 with prime configured for 6 nodes tuned for LAN and with alerts, PLC compiled, batch flags off.
#disk_image = "urn:publicid:IDN+utah.cloudlab.us+image+byzantinegridsec-PG0:Prime21.node1b:0" #centos 8 with prime configured for 6 nodes tuned for LAN and with alerts, PLC compiled, batch flags off and phases output.
disk_image = "urn:publicid:IDN+utah.cloudlab.us+image+byzantinegridsec-PG0:Prime22.node1.Delayed" #same as above, but leader is malicious.
disk_image_no_echo = "urn:publicid:IDN+utah.cloudlab.us+image+byzantinegridsec-PG0:Prime23.Delay.NoEcho" #same as above, but leader is malicious and output is less verbose.



site_nodes = 3

# Count for node name.
counter = 1;

# ifaces. 
ifaces = []

# Nodes at Site One.
for i in range(1,9,1): #single site mode with 6 replicas 
    node = request.RawPC("node" + str(counter))
    if i == 1:
        node.disk_image = disk_image
    else:
        node.disk_image = disk_image_no_echo
        
    # Assign to Site One.
    node.Site("Site1")
    # Create iface and assign IP
    iface = node.addInterface("eth1")
    # Specify the IPv4 address
    iface.addAddress(pg.IPv4Address("192.168.101.10" + str(counter), "255.255.255.0"))
    ifaces.append(iface)
    counter = counter + 1
    pass

# Now add the link to the rspec. 
lan = request.LAN("lan")

# Must provide a bandwidth. BW is in Kbps
#lan.bandwidth = 100000

#link1 = request.L1Link("link1")

# Add interfaces to lan
for iface in ifaces:
    #link1.addInterface(iface)
    lan.addInterface(iface)

# Print the RSpec to the enclosing page.
pc.printRequestRSpec(request)
