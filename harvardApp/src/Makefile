TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = harvard
# harvard.dbd will be created and installed
DBD += harvard.dbd

# harvard.dbd will be made up from these files:
harvard_DBD += base.dbd

# Include dbd files from all support applications:
harvard_DBD += busyRecord.dbd
harvard_DBD += asyn.dbd
harvard_DBD += calc.dbd
harvard_DBD += stream.dbd
#harvard_DBD += stream-calc.dbd
harvard_DBD += drvAsynIPPort.dbd
harvard_DBD += drvAsynSerialPort.dbd
harvard_DBD += system.dbd
harvard_DBD += devIocStats.dbd
harvard_DBD += asSupport.dbd
harvard_DBD += caPutLog.dbd
harvard_DBD += asSupport.dbd

# Add all the support libraries needed by this IOC
harvard_LIBS += asyn
harvard_LIBS += busy
harvard_LIBS += calc
harvard_LIBS += stream
harvard_LIBS += devIocStats
harvard_LIBS += autosave
harvard_LIBS += caPutLog

# harvard_registerRecordDeviceDriver.cpp derives from harvard.dbd
harvard_SRCS += harvard_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
harvard_SRCS_DEFAULT += harvardMain.cpp
harvard_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#harvard_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
harvard_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

