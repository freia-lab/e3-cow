//importPackage(Packages.org.csstudio.opibuilder.scriptUtil);
importPackage(Packages.org.csstudio.display.builder.runtime.script.ScriptUtil);

var macroInput = DataUtil.createMacrosInput(true);
var pv = PVUtil.getString(pvArray[0]);

macroInput.put("PREFIX", pv);
widgetController.setPropertyValue("macros", macroInput);