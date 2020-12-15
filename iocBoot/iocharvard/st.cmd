#!/home/liji/data/epics/modules/harvard/bin/linux-x86_64/harvard


< envPaths

epicsEnvSet("Sys", "XF:28ID2-ES:1")
epicsEnvSet("Dev", "Pump:1")
epicsEnvSet("Port", "L0")
#epicsEnvSet("IP", "xf28idc-tsrv10.nsls2.bnl.local")
#epicsEnvSet("TCP_PORT", "4001")
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(HARVARD)/harvardApp/protocol/")

dbLoadDatabase "$(HARVARD)/dbd/harvard.dbd"
harvard_registerRecordDeviceDriver pdbbase

drvAsynSerialPortConfigure("$(Port)","/dev/ttyUSB0",0,0,0) 
asynSetOption("$(Port)", -1, "baud", "115200") 
asynSetOption("$(Port)", -1, "bits", "8") 
asynSetOption("$(Port)", -1, "parity", "none") 
asynSetOption("$(Port)", -1, "stop", "1") 
asynSetOption("$(Port)", -1, "clocal", "Y") 
asynSetOption("$(Port)", -1, "crtscts", "N") 

dbLoadRecords("$(HARVARD)/db/pump33dds-ax.db","P=$(Sys),Q=$(Dev),AX=a,PORT=$(Port)")

iocInit

dbl > ./records.dbl
