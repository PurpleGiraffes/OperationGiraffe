// SendReinforcements function
// By EsotericReverie
//
// Clears all waypoints from the given group and adds a search and destroy waypoint with a 100 m radius at the given location.
// Usage: [group, position] call eso_clearWaypoints
//
// Credits: uses Wolfenswan's ws_fnc_addWaypoint. Cheers!
//
private ["_group", "_targetPos"];

_group = _this select 0;
_targetPos = _this select 1;

if (_debug) 
{
	player sidechat format ["sending %1 to reinforce position %2", _group, _position];
}

while {(count (waypoints _group)) > 0} 
do {
   deleteWaypoint ((waypoints _group) select 0);
};

[_group, _targetPos, ["SAD",100], ["AWARE","YELLOW","FULL"]] call ws_fnc_addWaypoint;