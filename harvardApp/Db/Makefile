TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

#----------------------------------------------------
# In a Diamond Support Module, install
# templates like this
#
#DB += harvardSyringe.template
DB += pump33dds-cmd.db
DB += pump33dds-ax.db
DB += pump33dds-ax-int.db
#DB += pump33dds-ax-int-egu.db
DB += pump33dds-ax-float-egu.db
DB += pump33dds-ax-rate.db
DB += pump33dds-ax-vol.db
DB += pump33dds-ax-time.db
DB += pump33dds-ax-status-a.db

#----------------------------------------------------
# In a Diamond IOC Application, build db files from
# template files like this
#
#DB += BL06I-MO-IOC-01.db
#DB += BL06I-MO-IOC-01_sim.db

#USES_TEMPLATE += $(MOTOR)/db/motor.template
#USES_TEMPLATE += $(MOTOR)/db/basic_motor.template

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
