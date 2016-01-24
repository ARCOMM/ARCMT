class ARC_Groups
{
	/*
		Channels:
			152:
				1 - Alpha
				2 - Bravo
				3 - Charlie
				4 - Command
				5 - Air
			148:
				1 - Alpha
				2 - Bravo
				3 - Charlie
				4 - Command
				5 - Air
			343:
				1 - A1
				2 - A2
				3 - B1
				4 - B2
				5 - C1
				6 - C2
				7 - MMG1
				8 - MMG2
				9 - MMG3
				10 - MMG4
				11 - G1
				12 - G2
				13 - G3
				14 - G4
				15 - Command
	*/
	class west
	{
		class GrpNATO_CO
		{
			color = "#FFC600";
			title = "First Platoon";
			initial = "PltHQ";
			header = true;
			radios[] = {
				{"148", 4},
				{"152", 4},
				{"343", 15}
			};
		};
		class GrpNATO_ASL
		{
			color = "#FF4040";
			title = "Alpha";
			initial = "ASL";
			header = true;
			radios[] = {
				{"148", 1},
				{"152", 4},
				{"343", 1}
			};
		};
		/*
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
		*/
	};
};
