# This should be a test or example startup script

require cow
require recsync

epicsEnvSet ("IOCNAME", "ioc06-cow")

iocshLoad("$(cow_DIR)/cow.iocsh", "COW_PREFIX=CoW, COW_IP=192.168.1.70")


dbLoadRecords "reccaster.db", "P=CoW-Ctrl:RecCaster:"
