<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Profibus channel.lvclass" Type="LVClass" URL="../channel/Profibus channel.lvclass"/>
		<Item Name="Profibus Module configuration.lvclass" Type="LVClass" URL="../configuration/Profibus Module configuration.lvclass"/>
		<Item Name="Profibus Module runtime.lvclass" Type="LVClass" URL="../execution/Profibus Module runtime.lvclass"/>
		<Item Name="Profibus Module tests.lvlib" Type="Library" URL="../testing/Profibus Module tests.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="CS_cRIO-PB_DP-Master_FPGA-Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/Comsoft.lib/cRIO PBMS/CS_cRIO-PB_DP-Master_FPGA-Reference.ctl"/>
				<Item Name="CS_cRIO-PB_DP-Master_ProcessData.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Comsoft.lib/cRIO PBMS/CS_cRIO-PB_DP-Master_ProcessData.vi"/>
				<Item Name="CS_cRIO-PB_DP-Master_ReadWrite.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Comsoft.lib/cRIO PBMS/CS_cRIO-PB_DP-Master_ReadWrite.vi"/>
				<Item Name="CS_cRIO-PB_DP-Master_SlaveDiagData.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Comsoft.lib/cRIO PBMS/CS_cRIO-PB_DP-Master_SlaveDiagData.vi"/>
				<Item Name="CS_cRIO-PB_DP-Master_SlaveInfo.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Comsoft.lib/cRIO PBMS/CS_cRIO-PB_DP-Master_SlaveInfo.vi"/>
				<Item Name="CS_cRIO-PB_DP-Master_StartStop.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Comsoft.lib/cRIO PBMS/CS_cRIO-PB_DP-Master_StartStop.vi"/>
				<Item Name="CS_cRIO-PB_DP-Slave_ReadWriteError.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Comsoft.lib/cRIO PBMS/CS_cRIO-PB_DP-Slave_ReadWriteError.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="tag bus.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tag Bus/tag bus.lvlib"/>
				<Item Name="TBM channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/channel/TBM channel.lvclass"/>
				<Item Name="TBM configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/root configuration/TBM configuration.lvclass"/>
				<Item Name="TBM module configuration.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/module configuration/TBM module configuration.lvclass"/>
				<Item Name="TBM module execution interface.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Tag Bus Module Framework/runtime/TBM module execution interface.lvclass"/>
				<Item Name="TBM timing source.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/NI/Module Timing Source/timing source/TBM timing source.lvclass"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="niFpgaDynamicAddResources.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/interface/common/dynamic/niFpgaDynamicAddResources.vi"/>
			<Item Name="niFpgaHostInterfaceSession.ctl" Type="VI" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2013/Targets/NI/FPGA/StockFPGA_IntfPrivate/ScriptTemplates/niFpgaHostInterfaceSession.ctl"/>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="niFpgaNodeNameForErrorReporting.ctl" Type="VI" URL="/&lt;vilib&gt;/rvi/interface/common/niFpgaNodeNameForErrorReporting.ctl"/>
			<Item Name="niFpgaWaitOnOcc.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/interface/common/niFpgaWaitOnOcc.vi"/>
			<Item Name="niLvFpga_Close_Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/FPGAPlugInAG/Dynamic/niLvFpga_Close_Dynamic.vi"/>
			<Item Name="niLvFpga_Open_cRIO-9068.vi" Type="VI" URL="/&lt;vilib&gt;/FPGAPlugInAG/cRIO-9068/niLvFpga_Open_cRIO-9068.vi"/>
			<Item Name="niLvFpga_Reset_Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/FPGAPlugInAG/Dynamic/niLvFpga_Reset_Dynamic.vi"/>
			<Item Name="niLvFpga_Run_Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/FPGAPlugInAG/Dynamic/niLvFpga_Run_Dynamic.vi"/>
			<Item Name="niLvFpgaAdjustHostInterfaceError.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/niLvFpgaAdjustHostInterfaceError.vi"/>
			<Item Name="niLvFpgaErrorClusterFromErrorCode.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/niLvFpgaErrorClusterFromErrorCode.vi"/>
			<Item Name="niLvFpgaFormatErrorSource.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/niLvFpgaFormatErrorSource.vi"/>
			<Item Name="niLvFpgaWhatHappensToTopLevelVI.ctl" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/niLvFpgaWhatHappensToTopLevelVI.ctl"/>
			<Item Name="nirio_resource_hc.ctl" Type="VI" URL="/&lt;vilib&gt;/userdefined/High Color/nirio_resource_hc.ctl"/>
			<Item Name="nirviErrorClusterFromErrorCode.vi" Type="VI" URL="/&lt;vilib&gt;/RVI Host/nirviSupport.llb/nirviErrorClusterFromErrorCode.vi"/>
			<Item Name="nirviWhatTheDeviceIsDoing.ctl" Type="VI" URL="/&lt;vilib&gt;/rvi/ClientSDK/nirviWhatTheDeviceIsDoing.ctl"/>
			<Item Name="ProfibusModule_FPGATarget_FPGAMain_98nU8AqzUJM.lvbitx" Type="Document" URL="../FPGA Bitfiles/ProfibusModule_FPGATarget_FPGAMain_98nU8AqzUJM.lvbitx"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="RT CompactRIO Target" Type="RT CompactRIO">
		<Property Name="alias.name" Type="Str">RT CompactRIO Target</Property>
		<Property Name="alias.value" Type="Str">192.168.1.2</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;DeviceCode,76D6;</Property>
		<Property Name="crio.ControllerPID" Type="Str">76D6</Property>
		<Property Name="crio.family" Type="Str">ARMLinux</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Chassis" Type="cRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">cRIO-9068</Property>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{005892D8-BBC6-4740-B588-02DB1E92493D}resource=/crio_Mod1/DIO1_UNIQUE_269;0;ReadMethodType=bool;WriteMethodType=bool{0FBCF41E-7159-4CF8-A362-44685046BAC3}resource=/crio_Mod1/AutoSlaveModeChn_UNIQUE_1586;0{11C462AF-2036-4564-B08F-09816BD64C40}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{18553CDA-C265-40DE-A00B-D8A8920DCCF5}cRIO Subresource{259E76D1-55DF-40F6-AFA8-F5DD19D92BEC}resource=/crio_Mod1/ModuleErrorChn_UNIQUE_1417;0{285E4BCA-CDEC-4750-A1D9-E92293E88A99}resource=/crio_Mod1/DPV1-CommandChn_UNIQUE_1312;0{32F1E120-AE1B-43D3-A03B-9FA65F8E4069}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{351AF0D2-0976-4DFF-B127-BD012BF4BFCF}resource=/crio_Mod1/Status Interface_UNIQUE_1589;0{40A8E65F-1B51-4F44-B6B9-0446BE9ABF4F}resource=/crio_Mod1/DIO6_UNIQUE_274;0;ReadMethodType=bool;WriteMethodType=bool{48BFC2F0-C4E0-442B-B2B0-3B44D20141A2}resource=/crio_Mod1/DIO4_UNIQUE_272;0;ReadMethodType=bool;WriteMethodType=bool{4B156214-99EB-4061-95BE-8774FEA15A43}cRIO Subresource{520AE863-4D8C-4CFA-8902-2F322E910113}resource=/crio_Mod1/DIO(7:0)_UNIQUE_462;0;ReadMethodType=u8;WriteMethodType=u8{56B0546A-CE8C-44D5-AB45-0DC73D756F39}resource=/crio_Mod1/DIO0_UNIQUE_268;0;ReadMethodType=bool;WriteMethodType=bool{5C967C05-7956-4E41-A5D0-D776174C0C8E}resource=/crio_Mod1/DIO2_UNIQUE_270;0;ReadMethodType=bool;WriteMethodType=bool{6624FA87-BE5A-4A28-8B70-B88B2A803700}resource=/crio_Mod1/Timing Interface_UNIQUE_1561;0{6795DACA-0211-401B-AF83-4D6908B1425A}resource=/Scan Clock;0;ReadMethodType=bool{68D03298-E0AD-4AD7-8B9C-72C6439AF3DB}resource=/crio_Mod1/DIO3_UNIQUE_271;0;ReadMethodType=bool;WriteMethodType=bool{8F02EF16-EE7F-4033-9F05-EA5FF44FCFD3}resource=/crio_Mod1/DIO8_UNIQUE_276;0;ReadMethodType=bool;WriteMethodType=bool{94E5B64F-AA7B-48D3-A0B9-6B52149DB074}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E{976ED92C-B146-417C-AB80-846AC55C0768}resource=/crio_Mod1/ResDataChn_UNIQUE_957;0{A1783235-7388-45E9-AF05-E9091A419680}resource=/Chassis Temperature;0;ReadMethodType=i16{A4A57412-6748-44DB-B45F-9C19FBDE8315}resource=/crio_Mod1/Debug Interface_UNIQUE_1432;0{B283FE75-1A80-482B-A019-C492029F7207}resource=/crio_Mod1/StartupStatusChn_UNIQUE_1680;0{B4DF2907-D36F-47E2-A7F2-64856D06C253}resource=/crio_Mod1/ReqDataChn_UNIQUE_955;0{BAA03D32-5AAB-4E90-8BE2-64F94ED9E0BD}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{CDDBC9D4-8598-4006-B509-042293D6A101}resource=/crio_Mod1/DIO5_UNIQUE_273;0;ReadMethodType=bool;WriteMethodType=bool{D03E3C5A-EFA9-412B-9A12-EA65A3E69704}resource=/crio_Mod1/AcyclicResIndicationChn_UNIQUE_2301;0{D3EB354E-C546-46D4-9A70-30DFA7632D5C}resource=/crio_Mod1/DIO7_UNIQUE_275;0;ReadMethodType=bool;WriteMethodType=bool{D78C6396-715E-4F3E-91FA-BD81E0B428B8}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=CS_cRIO-PBMS[crioConfig.End]{D85C2B58-95EA-45E7-BA2B-FA6CDD40D542}resource=/crio_Mod1/Command Interface_UNIQUE_1648;0{D88DF703-1402-41B6-B04F-FDE6728E7936}cRIO Subresource{DFC1FB91-A92C-4C4D-BA06-1823F727D0E1}resource=/crio_Mod1/ProcInOutInfoChn_UNIQUE_1576;0{F8E84AFE-3582-4A65-AB4D-81B10BBE214D}resource=/crio_Mod1/Configuration Interface_UNIQUE_2313;0cRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427EChassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]DP-MastercRIO SubresourceDP-SlavecRIO SubresourceDPV1-MastercRIO SubresourceMod1/AcyclicResIndicationChn_UNIQUE_2301resource=/crio_Mod1/AcyclicResIndicationChn_UNIQUE_2301;0Mod1/AutoSlaveModeChn_UNIQUE_1586resource=/crio_Mod1/AutoSlaveModeChn_UNIQUE_1586;0Mod1/Command Interface_UNIQUE_1648resource=/crio_Mod1/Command Interface_UNIQUE_1648;0Mod1/Configuration Interface_UNIQUE_2313resource=/crio_Mod1/Configuration Interface_UNIQUE_2313;0Mod1/Debug Interface_UNIQUE_1432resource=/crio_Mod1/Debug Interface_UNIQUE_1432;0Mod1/DIO(7:0)_UNIQUE_462resource=/crio_Mod1/DIO(7:0)_UNIQUE_462;0;ReadMethodType=u8;WriteMethodType=u8Mod1/DIO0_UNIQUE_268resource=/crio_Mod1/DIO0_UNIQUE_268;0;ReadMethodType=bool;WriteMethodType=boolMod1/DIO1_UNIQUE_269resource=/crio_Mod1/DIO1_UNIQUE_269;0;ReadMethodType=bool;WriteMethodType=boolMod1/DIO2_UNIQUE_270resource=/crio_Mod1/DIO2_UNIQUE_270;0;ReadMethodType=bool;WriteMethodType=boolMod1/DIO3_UNIQUE_271resource=/crio_Mod1/DIO3_UNIQUE_271;0;ReadMethodType=bool;WriteMethodType=boolMod1/DIO4_UNIQUE_272resource=/crio_Mod1/DIO4_UNIQUE_272;0;ReadMethodType=bool;WriteMethodType=boolMod1/DIO5_UNIQUE_273resource=/crio_Mod1/DIO5_UNIQUE_273;0;ReadMethodType=bool;WriteMethodType=boolMod1/DIO6_UNIQUE_274resource=/crio_Mod1/DIO6_UNIQUE_274;0;ReadMethodType=bool;WriteMethodType=boolMod1/DIO7_UNIQUE_275resource=/crio_Mod1/DIO7_UNIQUE_275;0;ReadMethodType=bool;WriteMethodType=boolMod1/DIO8_UNIQUE_276resource=/crio_Mod1/DIO8_UNIQUE_276;0;ReadMethodType=bool;WriteMethodType=boolMod1/DPV1-CommandChn_UNIQUE_1312resource=/crio_Mod1/DPV1-CommandChn_UNIQUE_1312;0Mod1/ModuleErrorChn_UNIQUE_1417resource=/crio_Mod1/ModuleErrorChn_UNIQUE_1417;0Mod1/ProcInOutInfoChn_UNIQUE_1576resource=/crio_Mod1/ProcInOutInfoChn_UNIQUE_1576;0Mod1/ReqDataChn_UNIQUE_955resource=/crio_Mod1/ReqDataChn_UNIQUE_955;0Mod1/ResDataChn_UNIQUE_957resource=/crio_Mod1/ResDataChn_UNIQUE_957;0Mod1/StartupStatusChn_UNIQUE_1680resource=/crio_Mod1/StartupStatusChn_UNIQUE_1680;0Mod1/Status Interface_UNIQUE_1589resource=/crio_Mod1/Status Interface_UNIQUE_1589;0Mod1/Timing Interface_UNIQUE_1561resource=/crio_Mod1/Timing Interface_UNIQUE_1561;0Mod1[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 1,crio.Type=CS_cRIO-PBMS[crioConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">cRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">cRIO-9068</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Chassis I/O" Type="Folder">
					<Item Name="Chassis Temperature" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Chassis Temperature</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A1783235-7388-45E9-AF05-E9091A419680}</Property>
					</Item>
					<Item Name="Scan Clock" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Scan Clock</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6795DACA-0211-401B-AF83-4D6908B1425A}</Property>
					</Item>
					<Item Name="Sleep" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Sleep</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{BAA03D32-5AAB-4E90-8BE2-64F94ED9E0BD}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{32F1E120-AE1B-43D3-A03B-9FA65F8E4069}</Property>
					</Item>
					<Item Name="USER FPGA LED" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/USER FPGA LED</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{11C462AF-2036-4564-B08F-09816BD64C40}</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{94E5B64F-AA7B-48D3-A0B9-6B52149DB074}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="FPGA Main.vi" Type="VI" URL="../execution/FPGA Main.vi">
					<Property Name="BuildSpec" Type="Str">{3515E42B-3540-4715-9AFA-0AF45F48B76F}</Property>
					<Property Name="configString.guid" Type="Str">{23FC82EC-DD18-4066-9B99-797D75DA116A}resource=/Scan Clock;0;ReadMethodType=bool{24D5E1B2-ECDC-4E31-B364-098491746BC0}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{4961E16A-D77C-4E38-A39F-A016B6321258}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{5C1B6D0F-D924-4DE0-8891-609810638A36}resource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8{B20C66A9-D68D-4D5D-A632-F43ACCCD8750}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E{FAA21BD8-F281-412B-B880-5285667C1801}resource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427EChassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9068/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9068FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA/[rSeriesConfig.Begin][rSeriesConfig.End]Scan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUSER FPGA LEDresource=/USER FPGA LED;0;ReadMethodType=u8;WriteMethodType=u8</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\perforce\Sales\projects\POCs\Canrig RP800\Profibus Module\FPGA Bitfiles\ProfibusModule_FPGATarget_FPGAMain_98nU8AqzUJM.lvbitx</Property>
				</Item>
				<Item Name="Mod1" Type="RIO C Series Module">
					<Property Name="crio.3rdParty" Type="Bool">true</Property>
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 1</Property>
					<Property Name="crio.MDK2StyleSupport" Type="Bool">true</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">CS_cRIO-PBMS</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D78C6396-715E-4F3E-91FA-BD81E0B428B8}</Property>
					<Item Name="DP-Master" Type="RIO Subresource">
						<Property Name="FPGA.PersistentID" Type="Str">{D88DF703-1402-41B6-B04F-FDE6728E7936}</Property>
					</Item>
					<Item Name="DP-Slave" Type="RIO Subresource">
						<Property Name="FPGA.PersistentID" Type="Str">{18553CDA-C265-40DE-A00B-D8A8920DCCF5}</Property>
					</Item>
					<Item Name="DPV1-Master" Type="RIO Subresource">
						<Property Name="FPGA.PersistentID" Type="Str">{4B156214-99EB-4061-95BE-8774FEA15A43}</Property>
					</Item>
				</Item>
				<Item Name="Mod1/AcyclicResIndicationChn_UNIQUE_2301" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/AcyclicResIndicationChn_UNIQUE_2301</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D03E3C5A-EFA9-412B-9A12-EA65A3E69704}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/AutoSlaveModeChn_UNIQUE_1586" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/AutoSlaveModeChn_UNIQUE_1586</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{0FBCF41E-7159-4CF8-A362-44685046BAC3}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/Command Interface_UNIQUE_1648" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/Command Interface_UNIQUE_1648</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D85C2B58-95EA-45E7-BA2B-FA6CDD40D542}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/Configuration Interface_UNIQUE_2313" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/Configuration Interface_UNIQUE_2313</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{F8E84AFE-3582-4A65-AB4D-81B10BBE214D}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/Debug Interface_UNIQUE_1432" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/Debug Interface_UNIQUE_1432</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{A4A57412-6748-44DB-B45F-9C19FBDE8315}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DIO(7:0)_UNIQUE_462" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DIO(7:0)_UNIQUE_462</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{520AE863-4D8C-4CFA-8902-2F322E910113}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DIO0_UNIQUE_268" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DIO0_UNIQUE_268</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{56B0546A-CE8C-44D5-AB45-0DC73D756F39}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DIO1_UNIQUE_269" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DIO1_UNIQUE_269</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{005892D8-BBC6-4740-B588-02DB1E92493D}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DIO2_UNIQUE_270" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DIO2_UNIQUE_270</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{5C967C05-7956-4E41-A5D0-D776174C0C8E}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DIO3_UNIQUE_271" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DIO3_UNIQUE_271</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{68D03298-E0AD-4AD7-8B9C-72C6439AF3DB}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DIO4_UNIQUE_272" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DIO4_UNIQUE_272</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{48BFC2F0-C4E0-442B-B2B0-3B44D20141A2}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DIO5_UNIQUE_273" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DIO5_UNIQUE_273</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{CDDBC9D4-8598-4006-B509-042293D6A101}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DIO6_UNIQUE_274" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DIO6_UNIQUE_274</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{40A8E65F-1B51-4F44-B6B9-0446BE9ABF4F}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DIO7_UNIQUE_275" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DIO7_UNIQUE_275</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{D3EB354E-C546-46D4-9A70-30DFA7632D5C}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DIO8_UNIQUE_276" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DIO8_UNIQUE_276</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{8F02EF16-EE7F-4033-9F05-EA5FF44FCFD3}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/DPV1-CommandChn_UNIQUE_1312" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/DPV1-CommandChn_UNIQUE_1312</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{285E4BCA-CDEC-4750-A1D9-E92293E88A99}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/ModuleErrorChn_UNIQUE_1417" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/ModuleErrorChn_UNIQUE_1417</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{259E76D1-55DF-40F6-AFA8-F5DD19D92BEC}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/ProcInOutInfoChn_UNIQUE_1576" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/ProcInOutInfoChn_UNIQUE_1576</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{DFC1FB91-A92C-4C4D-BA06-1823F727D0E1}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/ReqDataChn_UNIQUE_955" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/ReqDataChn_UNIQUE_955</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{B4DF2907-D36F-47E2-A7F2-64856D06C253}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/ResDataChn_UNIQUE_957" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/ResDataChn_UNIQUE_957</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{976ED92C-B146-417C-AB80-846AC55C0768}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/StartupStatusChn_UNIQUE_1680" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/StartupStatusChn_UNIQUE_1680</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{B283FE75-1A80-482B-A019-C492029F7207}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/Status Interface_UNIQUE_1589" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/Status Interface_UNIQUE_1589</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{351AF0D2-0976-4DFF-B127-BD012BF4BFCF}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Mod1/Timing Interface_UNIQUE_1561" Type="Elemental IO">
					<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod1/Timing Interface_UNIQUE_1561</Value>
   </Attribute>
</AttributeSet>
</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{6624FA87-BE5A-4A28-8B70-B88B2A803700}</Property>
					<Property Name="HiddenEIO" Type="Bool">true</Property>
				</Item>
				<Item Name="Dependencies" Type="Dependencies">
					<Item Name="niFpgaWaitOnOcc.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/interface/common/niFpgaWaitOnOcc.vi"/>
					<Item Name="niFpgaCriticalErrorInLSC.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Emulation/niFpgaCriticalErrorInLSC.vi"/>
					<Item Name="niFpgaEmulationReportErrorSimple.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Emulation/niFpgaEmulationReportErrorSimple.vi"/>
					<Item Name="niFpgaEmulationVisToLoad.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Emulation/niFpgaEmulationVisToLoad.vi"/>
					<Item Name="niFpgaEmulError.ctl" Type="VI" URL="/&lt;vilib&gt;/rvi/DesktopExecutionNode/niFpgaEmulError.ctl"/>
					<Item Name="niFpgaGenCallStack.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/niFpgaGenCallStack.vi"/>
					<Item Name="niFpgaGetClockAttributes.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Emulation/niFpgaGetClockAttributes.vi"/>
					<Item Name="niFpgaGetClockAttributesFromContext.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Emulation/niFpgaGetClockAttributesFromContext.vi"/>
					<Item Name="niFpgaGetScratchAppInstance.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/eio/common/niFpgaGetScratchAppInstance.vi"/>
					<Item Name="niFpgaProcessEmulError.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Emulation/niFpgaProcessEmulError.vi"/>
					<Item Name="niFpgaSctlEmulationGetInTimedLoop.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/Emulation/niFpgaSctlEmulationGetInTimedLoop.vi"/>
					<Item Name="niFpgaSetErrorForExecOnDevCompSimple.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/niFpgaSetErrorForExecOnDevCompSimple.vi"/>
					<Item Name="nirviCleanSpecificError.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/nirviCleanSpecificError.vi"/>
					<Item Name="nirviEmuReportErrorAndStop.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/eio/common/nirviEmuReportErrorAndStop.vi"/>
					<Item Name="nirvififoEmulationCreateLock.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/FIFO/Fifo_Resource/nirvififoEmulationCreateLock.vi"/>
					<Item Name="nirvififoEmulationReleaseLock.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/FIFO/Fifo_Resource/nirvififoEmulationReleaseLock.vi"/>
					<Item Name="nirviFillInErrorInfo.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/nirviFillInErrorInfo.vi"/>
					<Item Name="nirviGetToplevelTsByTargetItem.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/ClientSDK/Core/TimingSources/Configuration/Private/nirviGetToplevelTsByTargetItem.vi"/>
					<Item Name="nirviReportUnexpectedCaseInternalError (Bool).vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/nirviReportUnexpectedCaseInternalError (Bool).vi"/>
					<Item Name="nirviReportUnexpectedCaseInternalError (String).vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/nirviReportUnexpectedCaseInternalError (String).vi"/>
					<Item Name="nirviReportUnexpectedCaseInternalError (U32).vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/nirviReportUnexpectedCaseInternalError (U32).vi"/>
					<Item Name="nirviReportUnexpectedCaseInternalError.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/nirviReportUnexpectedCaseInternalError.vi"/>
					<Item Name="nirviReportUnexpectedCaseInternalErrorHelper.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/errors/nirviReportUnexpectedCaseInternalErrorHelper.vi"/>
					<Item Name="nirviTopLevelTSIsDefaultTag.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/ClientSDK/Core/TimingSources/Configuration/Private/nirviTopLevelTSIsDefaultTag.vi"/>
					<Item Name="nirviTopLevelTSTag.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/ClientSDK/Core/TimingSources/Configuration/Private/nirviTopLevelTSTag.vi"/>
					<Item Name="nirviWaitOnOccurrenceBase.vi" Type="VI" URL="/&lt;vilib&gt;/rvi/occurrence/nirviWaitOnOccurrenceBase.vi"/>
				</Item>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="FPGA Main" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">FPGA Main</Property>
						<Property Name="Comp.BitfileName" Type="Str">ProfibusModule_FPGATarget_FPGAMain_98nU8AqzUJM.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">timing</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">high(timing)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">high</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">high</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/perforce/Sales/projects/POCs/Canrig RP800/Profibus Module/FPGA Bitfiles/ProfibusModule_FPGATarget_FPGAMain_98nU8AqzUJM.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/perforce/Sales/projects/POCs/Canrig RP800/Profibus Module/Profibus Module.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">true</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/RT CompactRIO Target/Chassis/FPGA Target/FPGA Main.vi</Property>
					</Item>
				</Item>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
