private ["_unitfaction"];

if (!isDedicated && (isNull player)) then {
    waitUntil {sleep 0.1; !isNull player};
};

if (count _this == 0) then {
	_unitfaction = toLower (faction player);
	if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};
} else {
	_unitfaction = (_this select 0);
};

switch (_unitfaction) do {
	case "blu_f":
	{
		["GrpNATO_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpNATO_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpNATO_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpNATO_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpNATO_G1", 8, "Gmb1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_G2", 8, "Gmb2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_G3", 8, "Gmb3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_G4", 8, "Gmb4", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_PH1", 9, "Ph1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_PH2", 9, "Ph2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_PH3", 9, "Ph3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_PH4", 9, "Ph4", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitNATO_CO_M", 0, "COM", "ColorYellow"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_DC_M", 0, "DCM", "ColorYellow"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_ASL_M", 0, "AM", "ColorRed"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_BSL_M", 0, "BM", "ColorBlue"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_CSL_M", 0, "CM", "ColorGreen"] spawn f_fnc_localSpecialistMarker;
	};
	case "opf_f":
	{
		["GrpCSAT_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpCSAT_G1", 8, "Gmb1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_G2", 8, "Gmb2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_G3", 8, "Gmb3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_G4", 8, "Gmb4", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_PH1", 9, "Ph1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_PH2", 9, "Ph2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_PH3", 9, "Ph3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_PH4", 9, "Ph4", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitCSAT_CO_M", 0, "COM", "ColorYellow"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_DC_M", 0, "DCM", "ColorYellow"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_ASL_M", 0, "AM", "ColorRed"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_BSL_M", 0, "BM", "ColorBlue"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_CSL_M", 0, "CM", "ColorGreen"] spawn f_fnc_localSpecialistMarker;
	};
	case "ind_f":
	{
		["GrpAAF_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpAAF_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpAAF_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpAAF_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpAAF_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpAAF_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpAAF_G1", 8, "Gmb1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_G2", 8, "Gmb2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_G3", 8, "Gmb3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_G4", 8, "Gmb4", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpAAF_PH1", 9, "Ph1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_PH2", 9, "Ph2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_PH3", 9, "Ph3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_PH4", 9, "Ph4", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitAAF_CO_M", 0, "COM", "ColorYellow"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_DC_M", 0, "DCM", "ColorYellow"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_ASL_M", 0, "AM", "ColorRed"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_BSL_M", 0, "BM", "ColorBlue"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_CSL_M", 0, "CM", "ColorGreen"] spawn f_fnc_localSpecialistMarker;
	};
};
