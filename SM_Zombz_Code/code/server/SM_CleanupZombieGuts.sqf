/**
 * The Forsaken Survivors Community
 * www.theforsakensurvivors.co.uk
 * © 2016 The Forsaken Survivors Community
 *
 * This work is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License.
 * To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/4.0/
 */

private _player = objectFromNetId (_this select 0);

if (isNull _player) exitWith 
{
	"Zombie Guts cleanup failed, due to player object being null!" call SM_Util_Log;
};

_player setVariable ["SM_HasZombieGuts",false,true];

[_player,"RemoveGuts",[]] call SM_Network_SendMessage;


true
