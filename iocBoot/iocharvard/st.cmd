#!../../bin/linux-x86_64/harvard

#- You may have to change harvard to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/harvard.dbd",0,0)
harvard_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/harvard.db","user=softioc")

iocInit()

## Start any sequence programs
#seq sncharvard,"user=softioc"
