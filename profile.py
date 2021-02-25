# Import the Portal object.
import geni.portal as portal
# Import the ProtoGENI library.
import geni.rspec.pg as pg

# Create a portal context.
pc = portal.Context()

#disk_image = "urn:publicid:IDN+emulab.net+image+emulab-ops:CENTOS8-64-STD"; #centos 8.
disk_image = "urn:publicid:IDN+emulab.net+image+ByzantineGridSec:Prime6.node0" #centos 8 with prime


# Create a Request object to start building the RSpec.
request = pc.makeRequestRSpec()

site_nodes = 3

# Count for node name.
counter = 1;

# ifaces. 
ifaces = []

# Nodes at Site One.
for i in range(1,9,1): #single site mode with 6 replicas 
    node = request.RawPC("node" + str(counter))
    node.disk_image = disk_image
    # Assign to Site One.
    node.Site("Site1")
    # Create iface and assign IP
    iface = node.addInterface("eth1")
    # Specify the IPv4 address
    iface.addAddress(pg.IPv4Address("192.168.1.10" + str(counter), "255.255.255.0"))
    ifaces.append(iface)
    counter = counter + 1
    pass

# Now add the link to the rspec. 
lan = request.LAN("lan")

# Must provide a bandwidth. BW is in Kbps
lan.bandwidth = 100000

# Add interfaces to lan
for iface in ifaces:
    lan.addInterface(iface)

# Print the RSpec to the enclosing page.
pc.printRequestRSpec(request)
