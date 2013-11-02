// ClearWaypoints function
// By EsotericReverie
//
// Clears all waypoints from the given group.
// Usage: [group] call eso_clearWaypoints
//
//
private ["_group"];

_group = _this select 0;

while {(count (waypoints _group)) > 0} 
do {
   deleteWaypoint ((waypoints _group) select 0);
};
