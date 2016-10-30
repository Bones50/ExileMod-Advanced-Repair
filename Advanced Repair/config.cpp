//Bones Custom Vehicle Repairs

class Repair: ExileAbstractAction
{
	title = "Repair/Salvage";
	condition = "true";
	action = "_this call Bones_fnc_salvageAndRepairMenuCar";
};


// Bones Custom Air Repairs
class Repair: ExileAbstractAction
{
	title = "Repair/Salvage";
	condition = "true";
	action = "_this call Bones_fnc_salvageAndRepairMenuHelo";
};

