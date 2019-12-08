if (!hasInterface) exitWith {};

params ["_object", "_maxDistance", ["_minDistance", 0], ["_condition", {true}]];

"ChemicalDetector" cutRsc ["RscWeaponChemicalDetector", "PLAIN", 1, false];

private _ui = uiNamespace getVariable "RscWeaponChemicalDetector";
private _ctrl = _ui displayCtrl 101;

_maxDistance = _maxDistance - _minDistance;

while _condition do {
	_distance = ((player distance _object) - _minDistance) max 0;

	_threat = ((1 - (_distance/_maxDistance)) max 0) min 1;
	_ctrl ctrlAnimateModel ["Threat_Level_Source", [_threat, 2] call BIS_fnc_cutDecimals, true];

	sleep 1;
};
