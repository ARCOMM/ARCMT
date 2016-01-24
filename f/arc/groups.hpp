#include "macros.hpp"

class ARC_Groups
{
	ARCG_CO(0, CO, "First Platoon", "PltHQ", "#FFC600", 4, 4, 15)

	ARCG_SQD(1, ASL, "Alpha", "ASL", "#FF4040", 4, 1, 1)
	ARCG_FT(2, A1, "A1", "", "#FF4040", 1, 1)
	ARCG_FT(3, A2, "A2", "", "#FF4040", 1, 2)

	ARCG_SQD(4, BSL, "Bravo", "BSL", "#4458EC", 4, 2, 3)
	ARCG_FT(5, B1, "B1", "", "#4458EC", 2, 3)
	ARCG_FT(6, B2, "B2", "", "#4458EC", 2, 4)

	ARCG_SQD(7, CSL, "Charlie", "CSL", "#4FDC53", 4, 3, 5)
	ARCG_FT(8, C1, "C1", "", "#4FDC53", 3, 5)
	ARCG_FT(9, C2, "C2", "", "#4FDC53", 3, 6)

	ARCG_SPEC(10, MMG1, "MMG Teams", "MMG1", "#F39939", 4, 7, 7, true)
	ARCG_SPEC(11, MMG2, "MMG2", "", "#F39939", 4, 7, 8, false)
	ARCG_SPEC(12, MMG3, "MMG3", "", "#F39939", 4, 7, 9, false)
	ARCG_SPEC(13, MMG4, "MMG4", "", "#F39939", 4, 7, 10, false)

	ARCG_SPEC(14, PH1, "Phantom", "PH1", "#FF60E7", 5, 5, 16, true)
	ARCG_SPEC(15, PH2, "PH2", "", "#FF60E7", 5, 5, 16, false)
	ARCG_SPEC(16, PH3, "PH3", "", "#FF60E7", 5, 5, 16, false)
	ARCG_SPEC(17, PH4, "PH4", "", "#FF60E7", 5, 5, 16, false)

	ARCG_SPEC(18, G1, "Gambler", "G1", "#69F9F1", 4, 6, 11, true)
	ARCG_SPEC(19, G2, "G2", "", "#69F9F1", 4, 6, 12, false)
	ARCG_SPEC(20, G3, "G3", "", "#69F9F1", 4, 6, 13, false)
	ARCG_SPEC(21, G4, "G4", "", "#69F9F1", 4, 6, 14, false)
};
