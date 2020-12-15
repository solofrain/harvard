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
harvard_DBD += asyn.dbd
harvard_DBD += calc.dbd
harvard_DBD += stream.dbd
harvard_DBD += drvAsynSerialPort.dbd
#harvard_DBD += devIocStats.dbd
#harvard_DBD += iocAdmin.dbd

# Include dbd files from all support applications:
#harvard_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
harvard_LIBS += asyn calc
harvard_LIBS += stream 

#harvard_LIBS += devIocStats

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

