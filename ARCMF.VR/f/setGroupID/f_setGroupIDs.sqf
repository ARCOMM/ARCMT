_groups = [
	// GROUP IDs: BLUFOR > NATO
	["GrpNATO_CO","CO","ColorYellow"],
	["GrpNATO_DC","DC","ColorYellow"],

	["GrpNATO_ASL","ASL","ColorRed"],
	["GrpNATO_A1","A1","ColorRed"],
	["GrpNATO_A2","A2","ColorRed"],
	["GrpNATO_A3","A3","ColorRed"],

	["GrpNATO_BSL","BSL","ColorBlue"],
	["GrpNATO_B1","B1","ColorBlue"],
	["GrpNATO_B2","B2","ColorBlue"],
	["GrpNATO_B3","B3","ColorBlue"],

	["GrpNATO_CSL","CSL","ColorGreen"],
	["GrpNATO_C1","C1","ColorGreen"],
	["GrpNATO_C2","C2","ColorGreen"],
	["GrpNATO_C3","C3","ColorGreen"],

	["GrpNATO_MMG1","MMG1","ColorOrange"],
	["GrpNATO_MMG2","MMG2","ColorOrange"],
	["GrpNATO_MMG3","MMG3","ColorOrange"],
	["GrpNATO_MMG4","MMG4","ColorOrange"],

	["GrpNATO_G1","G1","ColorPink"],
	["GrpNATO_G2","G2","ColorPink"],
	["GrpNATO_G3","G3","ColorPink"],
	["GrpNATO_G4","G4","ColorPink"],

	["GrpNATO_PH1","PH1","ColorCIV"],
	["GrpNATO_PH2","PH2","ColorCIV"],
	["GrpNATO_PH3","PH3","ColorCIV"],
	["GrpNATO_PH4","PH4","ColorCIV"],

	// GROUP IDs: OPFOR > CSAT
	["GrpCSAT_CO","CO","ColorYellow"],
	["GrpCSAT_DC","DC","ColorYellow"],

	["GrpCSAT_ASL","ASL","ColorRed"],
	["GrpCSAT_A1","A1","ColorRed"],
	["GrpCSAT_A2","A2","ColorRed"],
	["GrpCSAT_A3","A3","ColorRed"],

	["GrpCSAT_BSL","BSL","ColorBlue"],
	["GrpCSAT_B1","B1","ColorBlue"],
	["GrpCSAT_B2","B2","ColorBlue"],
	["GrpCSAT_B3","B3","ColorBlue"],

	["GrpCSAT_CSL","CSL","ColorGreen"],
	["GrpCSAT_C1","C1","ColorGreen"],
	["GrpCSAT_C2","C2","ColorGreen"],
	["GrpCSAT_C3","C3","ColorGreen"],

	["GrpCSAT_MMG1","MMG1","ColorOrange"],
	["GrpCSAT_MMG2","MMG2","ColorOrange"],
	["GrpCSAT_MMG3","MMG3","ColorOrange"],
	["GrpCSAT_MMG4","MMG4","ColorOrange"],

	["GrpCSAT_G1","G1","ColorPink"],
	["GrpCSAT_G2","G2","ColorPink"],
	["GrpCSAT_G3","G3","ColorPink"],
	["GrpCSAT_G4","G4","ColorPink"],

	["GrpCSAT_PH1","PH1","ColorCIV"],
	["GrpCSAT_PH2","PH2","ColorCIV"],
	["GrpCSAT_PH3","PH3","ColorCIV"],
	["GrpCSAT_PH4","PH4","ColorCIV"],

	// GROUP IDs: INDEPENDENT > AAF
	["GrpAAF_CO","CO","ColorYellow"],
	["GrpAAF_DC","DC","ColorYellow"],

	["GrpAAF_ASL","ASL","ColorRed"],
	["GrpAAF_A1","A1","ColorRed"],
	["GrpAAF_A2","A2","ColorRed"],
	["GrpAAF_A3","A3","ColorRed"],

	["GrpAAF_BSL","BSL","ColorBlue"],
	["GrpAAF_B1","B1","ColorBlue"],
	["GrpAAF_B2","B2","ColorBlue"],
	["GrpAAF_B3","B3","ColorBlue"],

	["GrpAAF_CSL","CSL","ColorGreen"],
	["GrpAAF_C1","C1","ColorGreen"],
	["GrpAAF_C2","C2","ColorGreen"],
	["GrpAAF_C3","C3","ColorGreen"],

	["GrpAAF_MMG1","MMG1","ColorOrange"],
	["GrpAAF_MMG2","MMG2","ColorOrange"],
	["GrpAAF_MMG3","MMG3","ColorOrange"],
	["GrpAAF_MMG4","MMG4","ColorOrange"],

	["GrpAAF_G1","G1","ColorPink"],
	["GrpAAF_G2","G2","ColorPink"],
	["GrpAAF_G3","G3","ColorPink"],
	["GrpAAF_G4","G4","ColorPink"],

	["GrpAAF_PH1","PH1","ColorCIV"],
	["GrpAAF_PH2","PH2","ColorCIV"],
	["GrpAAF_PH3","PH3","ColorCIV"],
	["GrpAAF_PH4","PH4","ColorCIV"]
];

{_x call f_fnc_setGroupID} forEach _groups;