from org.csstudio.display.builder.runtime.script import PVUtil

signal = PVUtil.getString(pvs[0])

widget.getPropertyValue("macros").add("SGNL", signal)