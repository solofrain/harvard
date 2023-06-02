TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
# Create and install (or just install) into <top>/db
# databases, templates, substitutions like this
DB += pump33dds-cmd.db
DB += pump33dds-ax-cmd.db
DB += pump33dds-ax.db
DB += pump33dds-ax-int.db
#DB += pump33dds-ax-int-egu.db
#DB += pump33dds-ax-float-egu.db
DB += pump33dds-ax-rate.db
DB += pump33dds-ax-vol.db
DB += pump33dds-ax-time.db
DB += pump33dds-ax-status.db
#DB += pump33dds-ax-status-a.db
#DB += pump33dds-ax-status-b.db
DB += pump33dds.db

DB += phdultra.db

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_template = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

