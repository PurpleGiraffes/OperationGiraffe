
private ["_suppressor", "_weaponFired", "_weaponItems", "_ammo", "_distance"];

//player globalchat "Running loudness script!";

_distance = _this select 2;
_weaponFired = _this select 3;
_ammo = _this select 6;

// Choose based on ammo type at some point:
_loudness = 1;

// Distance attenuation:
if (_distance < 1) then {_distance = 1;};
_loudness = _loudness * (1/_distance);

_suppressor = false;
{
	if ((_weaponFired == _x select 0) && !((_x select 1) == "")) then {
		_suppressor = true;
	};
} forEach weaponsItems player;

if (_suppressor) then {
	//player sideChat "Yes, I had a silencer";
	_loudness = _loudness * 0.1;
} else {
	//player sideChat "No, I didn't";
};

_loudness;
