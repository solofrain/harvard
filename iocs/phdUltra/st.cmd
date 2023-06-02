#!/epics/modules/harvard/bin/linux-x86_64/harvard

< envPaths
< /epics/common/xf28id2-ioc1-netsetup.cmd

epicsEnvSet("Sys", "XF:28IDC-ES:1")
epicsEnvSet("Dev", "{Pump:2}")
epicsEnvSet("CtrlSys", "XF:28IDC-CT")
epicsEnvSet("IOCNAME", "PHDULTRA1")
epicsEnvSet("CtrlDev", "{IOC:$(IOCNAME)}")

epicsEnvSet("IP", "130.199.219.65")
epicsEnvSet("TCP_PORT", "4001")
epicsEnvSet("PORT", "L0")
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(HARVARD)/harvardApp/protocol/")
epicsEnvSet("ENGINEER", "Ji Li x7636")

dbLoadDatabase("$(HARVARD)/dbd/harvard.dbd",0,0)
harvard_registerRecordDeviceDriver(pdbbase)

#==================================
drvAsynIPPortConfigure ("$(PORT)", "$(IP):$(TCP_PORT)")

dbLoadRecords("$(HARVARD)/db/phdultra.db","P=$(Sys), Q=$(Dev), PORT=$(PORT), A=0")
dbLoadRecords("$(ASYN)/db/asynRecord.db", "P=$(Sys), R=$(Dev), PORT=$(PORT), ADDR=0, OMAX=80, IMAX=80")
dbLoadRecords("$(SUPPORT)/db/iocAdminSoft.db", "IOC=$(CntlSys)$(CntlDev)")

dbLoadRecords("$(RECCASTER)/reccaster.db", "P=$(CntlSys)$(CntlDev)RecSync")

iocInit()

dbl > records.dbl
