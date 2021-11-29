"""
# Old script

from org.csstudio.opibuilder.scriptUtil import PVUtil
from org.csstudio.opibuilder.scriptUtil import WidgetUtil

raw = PVUtil.getLongArray(pvArray[0])

if raw[0] < 90:
	cent = '20'
else:
	cent = '19'

tmstmp = cent+str(raw[0]).zfill(2)+'-'+str(raw[1]).zfill(2)+'-'+str(raw[2]).zfill(2)+' '+str(raw[3]).zfill(2)+':'+str(raw[4]).zfill(2)+':'+str(raw[5]).zfill(2)+'.'+str(raw[6]).zfill(2)+str((raw[7] >> 4) & 0xF);

widget.setPropertyValue("pv_value", tmstmp)
"""

from org.csstudio.display.builder.runtime.script import PVUtil

raw = PVUtil.getLongArray(pvs[0])

if raw[0] < 90:
    cent = '20'
else:
    cent = '19'

# I assume this is OK:
tmstmp = cent+str(raw[0]).zfill(2)+'-'+str(raw[1]).zfill(2)+'-'+str(raw[2]).zfill(2)+' '+str(raw[3]).zfill(2)+':'+str(raw[4]).zfill(2)+':'+str(raw[5]).zfill(2)+'.'+str(raw[6]).zfill(2)+str((raw[7] >> 4) & 0xF); # .. but no idea what data you have in the 'raw' array, you may want to try # tmstmp = str(raw) # just to debug the raw data.

widget.setPropertyValue("text", tmstmp)
