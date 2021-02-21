# Import the Portal object.
import geni.portal as portal
# Import the ProtoGENI library.
import geni.rspec.pg as pg

# Create a portal context.
pc = portal.Context()

disk_image = "urn:publicid:IDN+emulab.net+image+emulab-ops:CENTOS8-64-STD";


# Create a Request object to start building the RSpec.
request = pc.makeRequestRSpec()

site_nodes = 3

# Count for node name.
counter = 0;

# ifaces. 
ifaces = []

# Nodes at Site One.
for i in range(1,13,4): #replicas 1, 5, 9
    node = request.RawPC("node" + str(counter))
    node.disk_image = disk_image
    # Assign to Site One.
    node.Site("Site1")
    # Create iface and assign IP
    iface = node.addInterface("eth1")
    # Specify the IPv4 address
    iface.addAddress(pg.IPv4Address("192.168.1." + str(counter + 1), "255.255.255.0"))
    ifaces.append(iface)
    counter = counter + 1
    pass
 
 # Nodes at Site Two
for i in range(2, 14, 4): #replicas 2, 6, 10
    node = request.RawPC("node" + str(counter))
    node.disk_image = disk_image
    # Assign to Site Two
    node.Site("Site2")
    # Create iface and assign IP
    iface = node.addInterface("eth1")
    # Specify the IPv4 address
    iface.addAddress(pg.IPv4Address("192.168.1." + str(counter + 1), "255.255.255.0"))
    # And add to the lan.
    ifaces.append(iface)
    counter = counter + 1
    pass

 # Nodes at Site Three
for i in range(3, 15, 4): #replicas 3, 7, 11
    node = request.RawPC("node" + str(counter))
    node.disk_image = disk_image
    # Assign to Site Two
    node.Site("Site3")
    # Create iface and assign IP
    iface = node.addInterface("eth1")
    # Specify the IPv4 address
    iface.addAddress(pg.IPv4Address("192.168.1." + str(counter + 1), "255.255.255.0"))
    # And add to the lan.
    ifaces.append(iface)
    counter = counter + 1
    pass

 # Nodes at Site Four
for i in range(4, 16, 4): #replicas 4, 8, 12
    node = request.RawPC("node" + str(counter))
    node.disk_image = disk_image
    # Assign to Site Two
    node.Site("Site4")
    # Create iface and assign IP
    iface = node.addInterface("eth1")
    # Specify the IPv4 address
    iface.addAddress(pg.IPv4Address("192.168.1." + str(counter + 1), "255.255.255.0"))
    # And add to the lan.
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
