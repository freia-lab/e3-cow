#from org.csstudio.opibuilder.scriptUtil import PVUtil
"""
from org.csstudio.display.builder.runtime.script import PVUtil

total_time_left = PVUtil.getDouble(pvs[0])
#psu_stopped = PVUtil.getBoolean(pvs[1])

psu_stopped = PVUtil.getDouble(pvs[1])
psu_started = PVUtil.getDouble(pvs[2])
psu_warming_up = PVUtil.getDouble(pvs[3])

time_cold_sp1 = PVUtil.getDouble(pvs[4])
time_cold_sp2 = PVUtil.getDouble(pvs[5])
time_cold_sp3 = PVUtil.getDouble(pvs[6])

time_warm_sp1 = PVUtil.getDouble(pvs[7])
time_warm_sp2 = PVUtil.getDouble(pvs[8])
time_warm_sp3 = PVUtil.getDouble(pvs[9])

temp_reached = PVUtil.getDouble(pvs[10])

if not psu_started:
	if temp_reached:
		total_time = (time_warm_sp1+time_warm_sp2+time_warm_sp3)
	else:
		total_time = (time_cold_sp1+time_cold_sp2+time_cold_sp3)
	widget.setPropertyValue("pv_value", 0.0)
else:
	if psu_warming_up:
		current_time = abs(total_time_left-total_time)
		percent_value = (100*current_time)/total_time
		widget.setPropertyValue("pv_value", percent_value)
	else:
		widget.setPropertyValue("pv_value", 100.0)
"""

from org.csstudio.display.builder.runtime.script import PVUtil

total_time_left = PVUtil.getDouble(pvs[0])

time_cold_sp1 = PVUtil.getDouble(pvs[4])
time_cold_sp2 = PVUtil.getDouble(pvs[5])
time_cold_sp3 = PVUtil.getDouble(pvs[6])

time_warm_sp1 = PVUtil.getDouble(pvs[7])
time_warm_sp2 = PVUtil.getDouble(pvs[8])
time_warm_sp3 = PVUtil.getDouble(pvs[9])



