#!/home/liji/data/epics/modules/harvard/bin/linux-x86_64/harvard


< envPaths

epicsEnvSet("Sys", "XF:28ID2-ES:1")
epicsEnvSet("Dev", "Pump:1")
epicsEnvSet("Port", "L0")
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(HARVARD)/harvardApp/protocol/")

export EPICS_CA_ADDR_LIST=192.168.1.255
export EPICS_CA_AUTO_ADDR_LIST=NO

dbLoadDatabase "$(HARVARD)/dbd/harvard.dbd"
harvard_registerRecordDeviceDriver pdbbase

drvAsynSerialPortConfigure("$(Port)","/dev/ttyUSB0",0,0,0) 
asynSetOption("$(Port)", -1, "baud", "115200") 
asynSetOption("$(Port)", -1, "bits", "8") 
asynSetOption("$(Port)", -1, "parity", "none") 
asynSetOption("$(Port)", -1, "stop", "1") 
asynSetOption("$(Port)", -1, "clocal", "Y") 
asynSetOption("$(Port)", -1, "crtscts", "N") 

dbLoadTemplate("pump33dds.substitutions","P=$(Sys),Q=$(Dev),PORT=$(Port)")

dbLoadRecords("$(ASYN)/db/asynRecord.db", "P=$(Sys), R={$(Dev)}ASYN, PORT=$(Port), ADDR=0, OMAX=80, IMAX=800")
#dbLoadRecords("$(IOCSTATS)/db/iocAdminSoft.db","IOC=XF:28ID2-CT{IOC:Pump1}")

var streamError 1
#var streamDebug 1

asynOctetSetOutputEos("$(Port)",0,"\r\n")


## autosave/restore machinery
save_restoreSet_Debug(0)
save_restoreSet_IncompleteSetsOk(1)
save_restoreSet_DatedBackupFiles(1)

set_savefile_path("${TOP}/as","/save")
set_requestfile_path("${TOP}/as","/req")

set_pass0_restoreFile("info_positions.sav")


iocInit

cd ${TOP}/as/req
makeAutosaveFiles()
create_monitor_set("info_positions.req", 5 , "")

dbl > ./records.dbl

dbpf $(Sys){$(Dev)}ASYN.AOUT "RSAVE OFF"

dbpf $(Sys){$(Dev)}ASYN.TMSK 9
dbpf $(Sys){$(Dev)}ASYN.TIOM 2
#dbpf $(Sys){$(Dev)}ASYN.OEOS "\r\n"

dbpf $(Sys){$(Dev)}DISABLE 0
