ASL_Show_Repair_Options_Menu_Array = 
[
	["Repair Menu",false],
	["Repair Hull",[0],"",-5,[["expression","['repairHeloHull'] Call salvage_setup"]],"1","1"],
	["Repair Main Rotor",[0],"",-5,[["expression","['repairMainRotor'] Call salvage_setup"]],"1","1"],
	["Repair Tail Rotor",[0],"",-5,[["expression","['repairTailRotor'] Call salvage_setup"]],"1","1"],
	["Repair Engine",[0],"",-5,[["expression","['repairEngine'] Call salvage_setup"]],"1","1"],
	["Repair All",[0],"",-5,[["expression","['repairAllHelo'] Call salvage_setup"]],"1","1"],
	["Salvage Main Rotor",[0],"",-5,[["expression","['salvageMainRotor'] Call salvage_setup"]],"1","1"],
	["Salvage Tail Rotor",[0],"",-5,[["expression","['salvageTailRotor'] Call salvage_setup"]],"1","1"],
	["Salvage Engine",[0],"",-5,[["expression","['salvageEngine'] Call salvage_setup"]],"1","1"]
];
showCommandingMenu "";
showCommandingMenu "#USER:ASL_Show_Repair_Options_Menu_Array";

salvage_setup = {
_vehicle = cursorObject;
_action = _this select 0;
[_action,_vehicle] execVM 'Custom\advancedRepair\Bones_fnc_salvageAndRepair.sqf';
};