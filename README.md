# ExileMod-Advanced-Repair
Complex repair script for ExileMod that allows:</br>
a. Repair and salvage of engine and wheels.</br>
b. Repair of Body</br>
c. Repair all</br>

To Do:</br>
a.  Include need for wheels for repair all and repair only as many wheels as what the player has in inventory.</br>

Install Instructions:</br>
1. UnPBO your Mission File.</br>
2. Open the Advanced Repair folder and copy the "custom" folder to the mission file you just unPBO'd (same folder as config.cpp file).</br>
3. Add the below lines into the "initPlayerLocal.sqf" file from your mission file, immediately after "if (!hasInterface || isServer) exitWith {};".</br>

//Advanced repair</br>
Bones_fnc_salvageAndRepairMenuHelo = compileFinal preprocessFileLineNumbers "Custom\advancedRepair\Bones_fnc_salvageAndRepairMenuHelo.sqf";</br>
Bones_fnc_salvageAndRepairMenuCar = compileFinal preprocessFileLineNumbers  "Custom\advancedRepair\Bones_fnc_salvageAndRepairMenuCar.sqf";</br>

4. Open the description.ext file and change:</br>
showHUD[] = </br>
{</br>
    true,   // Scripted HUD (same as showHUD command)</br>
    true,   // Vehicle + soldier info</br>
    true,   // Vehicle radar </br>
    true,   // Vehicle compass</br>
    true,   // Tank direction indicator</br>
    false,  // Commanding menu</br>
    false,  // Group Bar</br>
    true,   // HUD Weapon Cursors</br>
    false   // Squad Radar</br>
};</br>

TO</br>

showHUD[] = </br>
{</br>
    true,   // Scripted HUD (same as showHUD command)</br>
    true,   // Vehicle + soldier info</br>
    true,   // Vehicle radar </br>
    true,   // Vehicle compass</br>
    true,   // Tank direction indicator</br>
    true,  // Commanding menu</br>
    false,  // Group Bar</br>
    true,   // HUD Weapon Cursors</br>
    false   // Squad Radar</br>
};</br>

5. Open the config.cpp file in your mission, find the "class CfgInteractionMenus" section, and replace the repair function for cars and helos respectively, with the following:</br>

//Bones Custom Vehicle Repairs</br>
class Repair: ExileAbstractAction</br>
{</br>
	title = "Repair/Salvage";</br>
	condition = "true";</br>
	action = "_this call Bones_fnc_salvageAndRepairMenuCar";</br>
};</br>

// Bones Custom Air Repairs</br>
class Repair: ExileAbstractAction</br>
{</br>
	title = "Repair/Salvage";</br>
	condition = "true";</br>
	action = "_this call Bones_fnc_salvageAndRepairMenuHelo";</br>
};</br>

6. Re-PBO your mission file and re-upload to the server.
