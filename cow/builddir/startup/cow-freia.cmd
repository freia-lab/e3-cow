#requireSnippet(modPath.cmd)

#require(s7plc,1.4.0)

require (recsync,1.2.0)

#require (ioc_ami_freia,1.2.1)

epicsEnvSet("PREFIX", "$(COW_PREFIX=CoW)")
epicsEnvSet("PLCIP", "$(COW_IP=192.168.1.70)")

#var s7plcDebug 5

## Datablocks
epicsEnvSet("TCPPORTCPU", "3000")
epicsEnvSet("PLCPORTCPU", "PLCCPU")
epicsEnvSet("INSIZECPU", "8")
epicsEnvSet("OUTSIZECPU", "4")

epicsEnvSet("TCPPORTAF", "3001")
epicsEnvSet("PLCPORTAF", "PLCAF")
epicsEnvSet("INSIZEAF", "1232")
epicsEnvSet("OUTSIZEAF", "728")

epicsEnvSet("TCPPORTDIO", "3002")
epicsEnvSet("PLCPORTDIO", "PLCDIO")
epicsEnvSet("INSIZEDIO", "912")
epicsEnvSet("OUTSIZEDIO", "152")

epicsEnvSet("TCPPORTINSTR", "3003")
epicsEnvSet("PLCPORTINSTR", "PLCINSTR")
epicsEnvSet("INSIZEINSTR", "430")
epicsEnvSet("OUTSIZEINSTR", "256")

s7plcConfigure("$(PLCPORTCPU)","$(PLCIP)",$(TCPPORTCPU),$(INSIZECPU),$(OUTSIZECPU),1,2500,500)
s7plcConfigure("$(PLCPORTAF)","$(PLCIP)",$(TCPPORTAF),$(INSIZEAF),$(OUTSIZEAF),1,2500,500)
s7plcConfigure("$(PLCPORTDIO)","$(PLCIP)",$(TCPPORTDIO),$(INSIZEDIO),$(OUTSIZEDIO),1,2500,500)
s7plcConfigure("$(PLCPORTINSTR)","$(PLCIP)",$(TCPPORTINSTR),$(INSIZEINSTR),$(OUTSIZEINSTR),1,2500,500)

# Add the breakpoint tables
updateMenuConvert()

addScan(60)
addScan(300)

dbLoadRecords "reccaster.db", "P=CoW-Ctrl:RecCaster:"

#drvAsynIPPortConfigure("AMI_PORT_610","192.168.1.39:7180",0,0,0)
#dbLoadRecords "ami.db", "PORT=AMI_PORT_610,P=CoW-LHe, NR=600, SCAN=2"


dbLoadRecords(cowCPU.db, "PREFIX=$(PREFIX)")
dbLoadRecords(cowAF.db, "PREFIX=$(PREFIX)")
dbLoadRecords(cowDIO.db, "PREFIX=CoW-LHe")
dbLoadRecords(cowINSTR.db, "PREFIX=$(PREFIX)")
#dbLoadRecords(cowCPU.db, "PREFIX=$(PREFIX), PLC=$(PLCPORTCPU), HOLDHIGH=1.0")
#dbLoadRecords(cowAF.db, "PREFIX=$(PREFIX), PLC=$(PLCPORTAF)")
#dbLoadRecords(cowDIO.db, "PREFIX=$(PREFIX), PLC=$(PLCPORTDIO)")
#dbLoadRecords(cowINSTR.db, "PREFIX=$(PREFIX), PLC=$(PLCPORTINSTR)")

#dbLoadTemplate(../db/cowCPU.substitutions, "PREFIX=$(PREFIX)")
#dbLoadTemplate(../db/cowAF.substitutions, "PREFIX=$(PREFIX)")
#dbLoadTemplate(../db/cowDIO.substitutions, "PREFIX=$(PREFIX)")
#dbLoadTemplate(../db/cowINSTR.substitutions, "PREFIX=$(PREFIX)")

