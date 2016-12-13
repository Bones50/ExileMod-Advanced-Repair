# ExileMod-Advanced-Repair
Complex repair script for ExileMod that allows:
a. Repair and salvage of engine and wheels.
b. Repair of Body
c. Rapair all

To Do:
a.  Include need for wheels for repair all and repair only as many wheels as what the player has in inventory.

Install Instructions:
1. UnPBO your Mission File.
2. Open the Advanced Repair folder and copy the "custom" folder to the mission file you just unPBO'd (same folder as config.cpp file).
3. Add the below lines into the "initPlayerLocal.sqf" file from your mission file, immediately after "if (!hasInterface || isServer) exitWith {};".

//Advanced repair
Bones_fnc_salvageAndRepairMenuHelo = compileFinal preprocessFileLineNumbers "Custom\advancedRepair\Bones_fnc_salvageAndRepairMenuHelo.sqf";
Bones_fnc_salvageAndRepairMenuCar = compileFinal preprocessFileLineNumbers "Custom\advancedRepair\Bones_fnc_salvageAndRepairMenuCar.sqf";
 
4. Open the description.ext file and change:
showHUD[] = 
{
    true,   // Scripted HUD (same as showHUD command)
    true,   // Vehicle + soldier info
    true,   // Vehicle radar 
    true,   // Vehicle compass
    true,   // Tank direction indicator
    false,  // Commanding menu
    false,  // Group Bar
    true,   // HUD Weapon Cursors
    false   // Squad Radar
};

TO

showHUD[] = 
{
    true,   // Scripted HUD (same as showHUD command)
    true,   // Vehicle + soldier info
    true,   // Vehicle radar 
    true,   // Vehicle compass
    true,   // Tank direction indicator
    true,  // Commanding menu
    false,  // Group Bar
    true,   // HUD Weapon Cursors
    false   // Squad Radar
};

5. Open the config.cpp file in your mission, find the "class CfgInteractionMenus" section, and replace the repair function for cars and helos respectively, with the following:

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

6. Re-PBO your mission file and re-upload to the server.
