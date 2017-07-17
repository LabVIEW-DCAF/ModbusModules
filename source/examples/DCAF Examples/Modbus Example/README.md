# Information for Modbus Example

This example includes a simple DCAF project with a Modbus master running in DCAF talking to a Modbus slave running in a standalone VI. See the picture in this directory, 'DCAF Modbus Example topology.png' to see the structure of the code included in this example. 

# Instructions:

1. Open the ModbusExample.lvproj. Open and run the Modbus Slave Example.vi (This is the example shipping with the NI Modbus Library). 
2. Open the Host Main.vi and choose the Modbus Example.pcfg file to load. Type in 'PC' as the target alias. Run the Host Main.vi. If you don't already have the slave running, you will encounter an error when initializing the DCAF application.
3. A front panel should be launched that lets you interact with the Modbus Slave Example.vi. The DCAF panel will automatically set and fetch the values. The Modbus Slave Example.vi requires you to hit the fetch and set buttons to update its UI. You should see changes made in one panel affect the other.

For more information how to use this example, please see this [page.](https://forums.ni.com/t5/Distributed-Control-Automation/DCAF-Modbus-Module-Documentation/gpm-p/3638321)

# If using DCAF as a Modbus Slave

If you are planning on using DCAF as a Modbus slave in your network, you will need to alter the DCAF Configuration file. The 'Interface' tab of the configuration will let you change the 'Class' field to set the Module to the master. You can also change the protocol to serial, but the example slave VI included in this project is designed for TCP. If changing the module from master to slave, you will also need to switch the direction of the channels.

# Note on Kepserver

Kepserver is a Modbus server commonly used to connect Modbus networks. You can export your DCAF module's configuration to Kepserver in order to easily connect your systems together.