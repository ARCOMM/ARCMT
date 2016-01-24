waitUntil {scriptDone f_script_setGroupIDs};

_finalText = "";

_sets = [
	/*
		0: Group Name
		1: Color
		2: Long Text (leave blank for on-the-same-line)
		3: Short Text (leaders prefix)
		4: Is Header?
	*/

	// NATO
	["GrpNATO_CO", "#FFC600", "First Platoon", "PltHQ", true],

	["GrpNATO_A2", "#FF4040", "Alpha", "ASL", true],
	["GrpNATO_A2", "#FF4040", "A1", "", false],
	["GrpNATO_A2", "#FF4040", "A2", "", false],

	["GrpNATO_BSL", "#4458EC", "Bravo", "BSL", true],
	["GrpNATO_B1", "#4458EC", "B1", "", false],
	["GrpNATO_B2", "#4458EC", "B2", "", false],

	["GrpNATO_CSL", "#4FDC53", "Charlie", "CSL", true],
	["GrpNATO_C1", "#4FDC53", "C1", "", false],
	["GrpNATO_C2", "#4FDC53", "C2", "", false],

	["GrpNATO_MMG1", "#F39939", "MMG Teams", "MMG1", true],
	["GrpNATO_MMG2", "#F39939", "MMG2", "", false],
	["GrpNATO_MMG3", "#F39939", "MMG3", "", false],
	["GrpNATO_MMG4", "#F39939", "MMG4", "", false],

	["GrpNATO_PH1", "#FF60E7", "Phantom", "PH1", true],
	["GrpNATO_PH2", "#FF60E7", "PH2", "", false],
	["GrpNATO_PH3", "#FF60E7", "PH3", "", false],
	["GrpNATO_PH4", "#FF60E7", "PH4", "", false],

	["GrpNATO_G1", "#69F9F1", "Gambler", "G1", true],
	["GrpNATO_G2", "#69F9F1", "G2", "", false],
	["GrpNATO_G3", "#69F9F1", "G3", "", false],
	["GrpNATO_G4", "#69F9F1", "G4", "", false],

	// CSAT
	["GrpCSAT_CO", "#FFC600", "First Platoon", "PltHQ", true],

	["GrpCSAT_ASL", "#FF4040", "Alpha", "ASL", true],
	["GrpCSAT_A1", "#FF4040", "A1", "", false],
	["GrpCSAT_A2", "#FF4040", "A2", "", false],

	["GrpCSAT_BSL", "#4458EC", "Bravo", "BSL", true],
	["GrpCSAT_B1", "#4458EC", "B1", "", false],
	["GrpCSAT_B2", "#4458EC", "B2", "", false],

	["GrpCSAT_CSL", "#4FDC53", "Charlie", "CSL", true],
	["GrpCSAT_C1", "#4FDC53", "C1", "", false],
	["GrpCSAT_C2", "#4FDC53", "C2", "", false],

	["GrpCSAT_MMG1", "#F39939", "MMG Teams", "MMG1", true],
	["GrpCSAT_MMG2", "#F39939", "MMG2", "", false],
	["GrpCSAT_MMG3", "#F39939", "MMG3", "", false],
	["GrpCSAT_MMG4", "#F39939", "MMG4", "", false],

	["GrpCSAT_PH1", "#FF60E7", "Phantom", "PH1", true],
	["GrpCSAT_PH2", "#FF60E7", "PH2", "", false],
	["GrpCSAT_PH3", "#FF60E7", "PH3", "", false],
	["GrpCSAT_PH4", "#FF60E7", "PH4", "", false],

	["GrpCSAT_G1", "#69F9F1", "Gambler", "G1", true],
	["GrpCSAT_G2", "#69F9F1", "G2", "", false],
	["GrpCSAT_G3", "#69F9F1", "G3", "", false],
	["GrpCSAT_G4", "#69F9F1", "G4", "", false],

	// AAF
	["GrpAAF_CO", "#FFC600", "First Platoon", "PltHQ", true],

	["GrpAAF_ASL", "#FF4040", "Alpha", "ASL", true],
	["GrpAAF_A1", "#FF4040", "A1", "", false],
	["GrpAAF_A2", "#FF4040", "A2", "", false],

	["GrpAAF_BSL", "#4458EC", "Bravo", "BSL", true],
	["GrpAAF_B1", "#4458EC", "B1", "", false],
	["GrpAAF_B2", "#4458EC", "B2", "", false],

	["GrpAAF_CSL", "#4FDC53", "Charlie", "CSL", true],
	["GrpAAF_C1", "#4FDC53", "C1", "", false],
	["GrpAAF_C2", "#4FDC53", "C2", "", false],

	["GrpAAF_MMG1", "#F39939", "MMG Teams", "MMG1", true],
	["GrpAAF_MMG2", "#F39939", "MMG2", "", false],
	["GrpAAF_MMG3", "#F39939", "MMG3", "", false],
	["GrpAAF_MMG4", "#F39939", "MMG4", "", false],

	["GrpAAF_PH1", "#FF60E7", "Phantom", "PH1", true],
	["GrpAAF_PH2", "#FF60E7", "PH2", "", false],
	["GrpAAF_PH3", "#FF60E7", "PH3", "", false],
	["GrpAAF_PH4", "#FF60E7", "PH4", "", false],

	["GrpAAF_G1", "#69F9F1", "Gambler", "G1", true],
	["GrpAAF_G2", "#69F9F1", "G2", "", false],
	["GrpAAF_G3", "#69F9F1", "G3", "", false],
	["GrpAAF_G4", "#69F9F1", "G4", "", false]
];

{
	if (!isNil (_x select 0)) then {
		_grp = call compile format ["%1", _x select 0];
		_color = _x select 1;
		_longText = _x select 2;
		_shortText = _x select 3;
		_header = _x select 4;

		if (side _grp == side player) then {
			if (isNull _grp && _header) then {
				_finalText = _finalText + format ["<br/><br/><font size='14' face='PuristaBold' color='#FFFFFF'>%1</font>", _longText];
			} else {
				_leader = leader _grp;
				_grpUnits = (units _grp) - [_leader];

				if (_header) then {
					_finalText = _finalText + format ["<br/><br/><font size='14' face='PuristaBold' color='#FFFFFF'>%1</font><br/>", _longText];
				} else {
					if ((count (toArray _longText)) > 0) then {
						_finalText = _finalText + format ["<br/><font size='14' color='#FFFFFF'>%1</font> ", _longText];
					};
				};

				if ((count (toArray _shortText)) > 0) then {
					_finalText = _finalText + format ["<font size='14' color='#FFFFFF'>%1</font> ", _shortText];
				};

				_finalText = _finalText + format ["<font color='%2' size='14'>%1 (L)</font>", name _leader, _color];

				{
					_icon = "";
					if (_x getVariable ["f_var_assignGear", ""] == "m") then {_icon = " (M)";};
					_finalText = _finalText + format [", <font color='%2' size='14'>%1%3</font>", name _x, _color, _icon];
				} forEach _grpUnits;
			};
		};
	};
} forEach _sets;

player createDiaryRecord ["PltRoster", ["Roster", _finalText]];
