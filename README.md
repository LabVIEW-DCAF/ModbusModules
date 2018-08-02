# Overview

Read or write values using Modbus Serial RTU, Serial ASCII, or TCP as either a master or slave. The module is built on the [NI Modbus Library](https://forums.ni.com/t5/NI-Labs-Toolkits/LabVIEW-Modbus-API/ta-p/3524019).

# Configuration of the Modbus Module

The Modbus module you run in DCAF will be just one of multiple endpoints in your Modbus system. You need to make sure you understand the topology of your system and the configuration of your devices to properly use the Modbus module.

## Registers

![modbus-reg.PNG](https://ni.i.lithium.com/t5/image/serverpage/image-id/203995i8B8E4C05A2AB8551/image-size/large?v=1.0&px=999 "modbus-reg.PNG")

Use the *+* button to add new channels, the *-* button to remove them, and the gear button to edit them.

When adding or editing a channel, you will be presented with the *Configure Channels* dialog:

![modbus-config.PNG](https://ni.i.lithium.com/t5/image/serverpage/image-id/203996iE25C51B183BA1CB2/image-size/large?v=1.0&px=999 "modbus-config.PNG")

**Access Type:** Whether this channel will be read from Modbus or written to the Modbus device

**Channel Name:** The name the DCAF will use to associate tags with this channel

**Modbus Bank:** The set of registers the channel will access. You can choose between *coils*, *discrete inputs*, *input registers*, and *holding registers*

**Address:** The offset from the modbus bank that the channel will read from

**Alias:** The exact address of the register on the modbus. This value will not be set by the operator, it will be determined by the *Modbus Bank*, *Address*, and *Type* selections

**Bit/Length:** For a string channel, the number of registers to read or write to. For a boolean channel reading or writing to an input or holding register, this indicates the offset of the bit in the particular register

**Type:** The data type of the register

**Tag:** The DCAF tag to map the channel to

## Interfaces

![modbus-interface.PNG](https://ni.i.lithium.com/t5/image/serverpage/image-id/203999iDDD4B23FC2C8A5CD/image-size/large?v=1.0&px=999 "modbus-interface.PNG")

**Class:** The protocol of the modbus endpoint. Choose between *TCP Master*, *TCP Slave*, *Serial Master*, and *Serial Slave*

**Unit ID:** Used for intra-system routing purposes for some serial devices

### TCP

**Address:** the IP Address of the modbus slave this system will communicate with.

**Port:** The port the Modbus slave is listening on.

**Note**: If you are using TCP as your interface, you should set this module to run asynchronously. You can configure this from your engine configuration in the Module Setting tab.

### Serial

![modbus-interface-serial.PNG](https://ni.i.lithium.com/t5/image/serverpage/image-id/204002i04659953FC1C2A43/image-size/large?v=1.0&px=999 "modbus-interface-serial.PNG")

The serial page has additional configuration. You should configure your serial port so that it has the same setting as the other serial endpoints for your Modbus configuration.

**Note:** To see the VISA resource names and settings of your devices, you can find them in the 'Devices and Interfaces' pane of NI Measurement and Automation Explorer. This is useful when configuring your application on a different system than the one it will run on.

## Export

**Export to KEPServer:** If you want to easily add your configuration to Kepserver, you can export this configuration as a CSV file that you can load in other applications.

# Using the Modbus Module

 If you are using the Modbus module as a master, make sure that the modbus slaves are accessible otherwise you may encounter initialization errors. 

# Modbus Module Example

Attached to this page is an example DCAF Application set to act as a Modbus master.

Instructions:

1\. Open the ModbusExample.lvproj. Open and run the Modbus Slave Example.vi (This is the example shipping with the NI Modbus Library). 

2\. Open the Host Main.vi and choose the Modbus Example.pcfg file to load. Type in 'PC' as the target alias. Run the Host Main.vi. If you don't already have the slave running, you will encounter an error when initializing the DCAF application.

3\. A front panel should be launched that lets you interact with the Modbus Slave Example.vi. The DCAF panel will automatically set and fetch the values. The Modbus Slave Example.vi requires you to hit the fetch and set buttons to update its UI. You should see changes made in one panel affect the other.

Open the Modbus Example.pcfg to see how the example is configured.

### Software Requirements

+   LabVIEW 2014 or later
+   NI Modbus Library

### Limitations

+   Supports the IEEE Modbus standard. If your device does not strictly implement the IEEE standard you may need to modify the module to conform to your devices specifications.
