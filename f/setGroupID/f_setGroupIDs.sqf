_groups = [
	// GROUP IDs: BLUFOR > NATO
	["GrpNATO_CO","NATO CO -"],
	["GrpNATO_DC","NATO DC -"],

	["GrpNATO_ASL","NATO ASL -"],
	["GrpNATO_A1","NATO A1 -"],
	["GrpNATO_A2","NATO A2 -"],
	["GrpNATO_A3","NATO A3 -"],

	["GrpNATO_BSL","NATO BSL -"],
	["GrpNATO_B1","NATO B1 -"],
	["GrpNATO_B2","NATO B2 -"],
	["GrpNATO_B3","NATO B3 -"],

	["GrpNATO_CSL","NATO CSL -"],
	["GrpNATO_C1","NATO C1 -"],
	["GrpNATO_C2","NATO C2 -"],
	["GrpNATO_C3","NATO C3 -"],

	["GrpNATO_MMG1","NATO MMG1 -"],
	["GrpNATO_MMG2","NATO MMG2 -"],
	["GrpNATO_MMG3","NATO MMG3 -"],
	["GrpNATO_MMG4","NATO MMG4 -"],

	["GrpNATO_G1","NATO G1 -"],
	["GrpNATO_G2","NATO G2 -"],
	["GrpNATO_G3","NATO G3 -"],
	["GrpNATO_G4","NATO G4 -"],

	["GrpNATO_PH1","NATO PH1 -"],
	["GrpNATO_PH2","NATO PH2 -"],
	["GrpNATO_PH3","NATO PH3 -"],
	["GrpNATO_PH4","NATO PH4 -"],

	// GROUP IDs: OPFOR > CSAT
	["GrpCSAT_CO","CSAT CO -"],
	["GrpCSAT_DC","CSAT DC -"],

	["GrpCSAT_ASL","CSAT ASL -"],
	["GrpCSAT_A1","CSAT A1 -"],
	["GrpCSAT_A2","CSAT A2 -"],
	["GrpCSAT_A3","CSAT A3 -"],

	["GrpCSAT_BSL","CSAT BSL -"],
	["GrpCSAT_B1","CSAT B1 -"],
	["GrpCSAT_B2","CSAT B2 -"],
	["GrpCSAT_B3","CSAT B3 -"],

	["GrpCSAT_CSL","CSAT CSL -"],
	["GrpCSAT_C1","CSAT C1 -"],
	["GrpCSAT_C2","CSAT C2 -"],
	["GrpCSAT_C3","CSAT C3 -"],

	["GrpCSAT_MMG1","CSAT MMG1 -"],
	["GrpCSAT_MMG2","CSAT MMG2 -"],
	["GrpCSAT_MMG3","CSAT MMG3 -"],
	["GrpCSAT_MMG4","CSAT MMG4 -"],

	["GrpCSAT_G1","CSAT G1 -"],
	["GrpCSAT_G2","CSAT G2 -"],
	["GrpCSAT_G3","CSAT G3 -"],
	["GrpCSAT_G4","CSAT G4 -"],

	["GrpCSAT_PH1","CSAT PH1 -"],
	["GrpCSAT_PH2","CSAT PH2 -"],
	["GrpCSAT_PH3","CSAT PH3 -"],
	["GrpCSAT_PH4","CSAT PH4 -"],

	// GROUP IDs: INDEPENDENT > AAF
	["GrpAAF_CO","AAF CO -"],
	["GrpAAF_DC","AAF DC -"],

	["GrpAAF_ASL","AAF ASL -"],
	["GrpAAF_A1","AAF A1 -"],
	["GrpAAF_A2","AAF A2 -"],
	["GrpAAF_A3","AAF A3 -"],

	["GrpAAF_BSL","AAF BSL -"],
	["GrpAAF_B1","AAF B1 -"],
	["GrpAAF_B2","AAF B2 -"],
	["GrpAAF_B3","AAF B3 -"],

	["GrpAAF_CSL","AAF CSL -"],
	["GrpAAF_C1","AAF C1 -"],
	["GrpAAF_C2","AAF C2 -"],
	["GrpAAF_C3","AAF C3 -"],

	["GrpAAF_MMG1","AAF MMG1 -"],
	["GrpAAF_MMG2","AAF MMG2 -"],
	["GrpAAF_MMG3","AAF MMG3 -"],
	["GrpAAF_MMG4","AAF MMG4 -"],

	["GrpAAF_G1","AAF G1 -"],
	["GrpAAF_G2","AAF G2 -"],
	["GrpAAF_G3","AAF G3 -"],
	["GrpAAF_G4","AAF G4 -"],

	["GrpAAF_PH1","AAF PH1 -"],
	["GrpAAF_PH2","AAF PH2 -"],
	["GrpAAF_PH3","AAF PH3 -"],
	["GrpAAF_PH4","AAF PH4 -"]
];

{_x call f_fnc_setGroupID} forEach _groups;