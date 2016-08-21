/*
 * Author: Kingsley
 * Adds the loadout actions to the given arsenal box
 *
 * Arguments:
 * 0: Arsenal box <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [myArsenal] call ARC_adv_fnc_addArsenalActions;
 *
 * Public: No
 */

#include "script_component.hpp"

params [["_arsenal", objNull, [objNull]]];

if (isNull _arsenal) exitWith {};

private _faction = (side group player) call ARC_fnc_getFactionFromSide;

{
    private _loadout = _x;
    private _classname = configName _loadout;
    private _displayName = getText (_loadout >> "displayName");
    private _uniform = getText (_loadout >> "uniform");
    private _vest = getText (_loadout >> "vest");
    private _backpack = getText (_loadout >> "backpack");
    private _weapons = getArray (_loadout >> "weapons");
    private _magazines = getArray (_loadout >> "magazines");
    private _items = getArray (_loadout >> "items");
    private _linkedItems = getArray (_loadout >> "linkedItems");
    private _arguments = [_classname, _uniform, _vest, _backpack, _weapons, _magazines, _items, _linkedItems];
    
    _arsenal addAction [_displayName, {
        params ["_target", "_caller", "_id", "_args"];
        _args params ["_classname", "_uniform", "_vest", "_backpack", "_weapons", "_magazines", "_items", "_linkedItems"];
        
        _caller setVariable ["ARC_ADV_Loadout", _classname];
        
        removeAllWeapons _caller;
        removeAllItems _caller;
        removeAllAssignedItems _caller;
        removeUniform _caller;
        removeVest _caller;
        removeBackpack _caller;
        removeHeadgear _caller;
        removeGoggles _caller;
        
        _caller forceAddUniform _uniform;
        _caller addVest _vest;
        _caller addBackpack _backpack;
        {_caller linkItem _x} forEach _linkedItems;
        {_caller addMagazine _x} forEach _magazines;
        {_caller addItem _x} forEach _items;
        {_caller addWeapon _x} forEach _weapons;
        
        _caller selectWeapon primaryWeapon _caller;
    }, _arguments];
} forEach ("true" configClasses (missionConfigFile >> "CfgAdversarial" >> "Loadouts" >> _faction));