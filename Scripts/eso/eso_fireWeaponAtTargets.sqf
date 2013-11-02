private ["_me", "_weapon", "_targets"];

_me = _this select 0;
_weapon = _this select 1;
_targets = _this select 2;

player globalchat format ["%1 got target list: %2", _me, _targets];
_me action ["SwitchWeapon", _me, _me, _weapon];
sleep 3;

{
	player globalchat format ["%1 is targetting %2", _me, _x];
	//_me action ["useWeapon", _x, _x, _weapon];
	while {alive _x} do
	{
		player globalchat format ["%1 is firing at %2", _me, _x];
		_me doWatch _x;
		_me doTarget _x;
		sleep 1;
		_me doFire _x;
		sleep 2;
	};
	player globalchat format ["%1 is dead!", _x];

} forEach _targets;
