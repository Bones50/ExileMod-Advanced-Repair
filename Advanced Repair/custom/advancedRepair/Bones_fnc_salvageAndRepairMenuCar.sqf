ASL_Show_Repair_Options_Menu_Array = 
[
	["Repair Menu",false],
	["Repair Body",[0],"",-5,[["expression","['repairCarHull'] Call salvage_setup"]],"1","1"],
	["Repair Wheel",[0],"",-5,[["expression","['repairWheel'] Call salvage_setup"]],"1","1"],
	["Repair Engine",[0],"",-5,[["expression","['repairCarEngine'] Call salvage_setup"]],"1","1"],
	["Repair All",[0],"",-5,[["expression","['repairAllCar'] Call salvage_setup"]],"1","1"],
	["Salvage Wheel",[0],"",-5,[["expression","['salvageWheel'] Call salvage_setup"]],"1","1"],
	["Salvage Engine",[0],"",-5,[["expression","['salvageCarEngine'] Call salvage_setup"]],"1","1"]
];
showCommandingMenu "";
showCommandingMenu "#USER:ASL_Show_Repair_Options_Menu_Array";

salvage_setup = {
_vehicle = cursorObject;
_action = _this select 0;
[_action,_vehicle] execVM 'Custom\advancedRepair\Bones_fnc_salvageAndRepair.sqf';
};