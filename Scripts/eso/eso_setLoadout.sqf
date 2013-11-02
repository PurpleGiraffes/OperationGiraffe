// ClearWaypoints function
// By EsotericReverie
//
// Clears all waypoints from the given group.
// Usage: [unit, loadout] call eso_clearWaypoints;
//
// Parameters:
//    unit    - the unit to change loadout for
//    loadout - what loadout to choose
//
private ["_me", "_class"];

_me = _this select 0;
_class = _this select 1;

player sidechat format ["Equipping %1 as a %2.", [_me, _class]];

//[Guerrilla_Colonel]
if (_class == "guerilla_col") then
{
	removeallweapons _me; removeallassigneditems _me; removeuniform _me; removevest _me; removebackpack _me;
	_me addvest "V_BandollierB_cbr";
	_me addHeadgear "H_Cap_headphones";
	_me addbackpack "B_Carryall_oli";
	_me adduniform "U_IG_leader";
};

//[Guerrilla_Lieutenant]
if (_class == "guerilla_lt") then
{
	removeallweapons _me; removeallassigneditems _me; removeuniform _me; removevest _me; removebackpack _me;
	_me addvest "V_BandollierB_oli";
	_me addbackpack "B_Carryall_oli";
	_me adduniform "U_IG_Guerilla3_2";
};

//[Guerrilla_1]
if (_class == "guerilla_1") then
{
	removeallweapons _me; removeallassigneditems _me; removeuniform _me; removevest _me; removebackpack _me;
	_me addvest "V_BandollierB_oli";
	_me addbackpack "B_Carryall_khk";
	_me addheadgear "H_Shemag_olive";
	_me adduniform "U_IG_Guerilla1_1";
};

//[Guerrilla_2]
if (_class == "guerilla_2") then
{
	removeallweapons _me; removeallassigneditems _me; removeuniform _me; removevest _me; removebackpack _me;
	_me addvest "V_BandollierB_oli";
	_me addbackpack "B_Carryall_oli";
	_me addHeadgear "H_Shemag_tan";
	_me adduniform "U_IG_Guerilla2_1";
};

//[Guerrilla_3]
if (_class == "guerilla_3") then
{
	removeallweapons _me; removeallassigneditems _me; removeuniform _me; removevest _me; removebackpack _me;
	_me addvest "V_BandollierB_khk";
	_me addbackpack "B_Carryall_cbr";
	_me addHeadgear "H_Booniehat_khk"; _me adduniform "U_IG_Guerilla2_2";
};


//[Guerrilla_4]
if (_class == "guerilla_4") then
{
	removeallweapons _me; removeallassigneditems _me; removeuniform _me; removevest _me; removebackpack _me;
	_me addvest "V_BandollierB_khk";
	_me addbackpack "B_Carryall_khk";
	_me addHeadgear "H_Booniehat_dirty";
	_me adduniform "U_C_HunterBody_grn";
};

//[Guerrilla_5]
if (_class == "guerilla_5") then
{
	removeallweapons _me; removeallassigneditems _me; removeuniform _me; removevest _me; removebackpack _me;
	_me addvest "V_BandollierB_oli";
	_me addbackpack "B_Carryall_cbr";
	_me addHeadgear "H_Watchcap_blk";
	_me adduniform "U_IG_Guerilla3_1";
};

//[Guerrilla_6]
if (_class == "guerilla_6") then
{
	removeallweapons _me; removeallassigneditems _me; removeuniform _me; removevest _me; removebackpack _me;
	_me addvest "V_BandollierB_oli";
	_me addbackpack "B_Carryall_khk";
	_me addHeadgear "H_Booniehat_dirty";
	_me adduniform "U_IG_Guerilla2_3";
};