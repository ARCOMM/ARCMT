_groups = [
	["GrpNATO_CO","CO -"],
	["GrpNATO_DC","DC -"],

	["GrpNATO_ASL","ASL -"],
	["GrpNATO_A1","A1 -"],
	["GrpNATO_A2","A2 -"],
	["GrpNATO_A3","A3 -"],

	["GrpNATO_BSL","BSL -"],
	["GrpNATO_B1","B1 -"],
	["GrpNATO_B2","B2 -"],
	["GrpNATO_B3","B3 -"],

	["GrpNATO_CSL","CSL -"],
	["GrpNATO_C1","C1 -"],
	["GrpNATO_C2","C2 -"],
	["GrpNATO_C3","C3 -"],

	["GrpNATO_MMG1","MMG1 -"],
	["GrpNATO_MMG2","MMG2 -"],

	["GrpNATO_G1","Gambler 1 -"],
	["GrpNATO_G2","Gambler 2 -"],
	["GrpNATO_G3","Gambler 3 -"],
	["GrpNATO_G4","Gambler 4 -"],

	["GrpNATO_PH1","Phantom 1 -"],
	["GrpNATO_PH2","Phantom 2 -"],
	["GrpNATO_PH3","Phantom 3 -"],
	["GrpNATO_PH4","Phantom 4 -"],

	// GROUP IDs: OPFOR > CSAT
	["GrpCSAT_CO","CO -"],
	["GrpCSAT_DC","DC -"],

	["GrpCSAT_ASL","ASL -"],
	["GrpCSAT_A1","A1 -"],
	["GrpCSAT_A2","A2 -"],
	["GrpCSAT_A3","A3 -"],

	["GrpCSAT_BSL","BSL -"],
	["GrpCSAT_B1","B1 -"],
	["GrpCSAT_B2","B2 -"],
	["GrpCSAT_B3","B3 -"],

	["GrpCSAT_CSL","CSL -"],
	["GrpCSAT_C1","C1 -"],
	["GrpCSAT_C2","C2 -"],
	["GrpCSAT_C3","C3 -"],

	["GrpCSAT_MMG1","MMG1 -"],
	["GrpCSAT_MMG2","MMG2 -"],

	["GrpCSAT_G1","Gambler 1 -"],
	["GrpCSAT_G2","Gambler 2 -"],
	["GrpCSAT_G3","Gambler 3 -"],
	["GrpCSAT_G4","Gambler 4 -"],

	["GrpCSAT_PH1","Phantom 1 -"],
	["GrpCSAT_PH2","Phantom 2 -"],
	["GrpCSAT_PH3","Phantom 3 -"],
	["GrpCSAT_PH4","Phantom 4 -"],

	// GROUP IDs: INDEPENDENT > AAF
	["GrpAAF_CO","CO -"],
	["GrpAAF_DC","DC -"],

	["GrpAAF_ASL","ASL -"],
	["GrpAAF_A1","A1 -"],
	["GrpAAF_A2","A2 -"],
	["GrpAAF_A3","A3 -"],

	["GrpAAF_BSL","BSL -"],
	["GrpAAF_B1","B1 -"],
	["GrpAAF_B2","B2 -"],
	["GrpAAF_B3","B3 -"],

	["GrpAAF_CSL","CSL -"],
	["GrpAAF_C1","C1 -"],
	["GrpAAF_C2","C2 -"],
	["GrpAAF_C3","C3 -"],

	["GrpAAF_MMG1","MMG1 -"],
	["GrpAAF_MMG2","MMG2 -"],

	["GrpAAF_G1","Gambler 1 -"],
	["GrpAAF_G2","Gambler 2 -"],
	["GrpAAF_G3","Gambler 3 -"],
	["GrpAAF_G4","Gambler 4 -"],

	["GrpAAF_PH1","Phantom 1 -"],
	["GrpAAF_PH2","Phantom 2 -"],
	["GrpAAF_PH3","Phantom 3 -"],
	["GrpAAF_PH4","Phantom 4 -"]
];

{_x call f_fnc_setGroupID} forEach _groups;
