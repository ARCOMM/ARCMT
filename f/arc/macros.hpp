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
			6 - Armor
			7 - Special
			8 - 16
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
			16 - Backup
*/
#define ARCG_CO(ORDER, GRPNAME, TITLE, INITIAL, COLOR, ULRCH, LRCH, SRCH) \
	class GrpNATO_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = true; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC152", ##ULRCH##}, \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	}; \
	class GrpCSAT_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = true; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC152", ##ULRCH##}, \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	}; \
	class GrpAAF_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = true; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC152", ##ULRCH##}, \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	};
#define ARCG_SQD(ORDER, GRPNAME, TITLE, INITIAL, COLOR, ULRCH, LRCH, SRCH) \
	class GrpNATO_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = true; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC152", ##ULRCH##}, \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	}; \
	class GrpCSAT_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = true; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC152", ##ULRCH##}, \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	}; \
	class GrpAAF_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = true; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC152", ##ULRCH##}, \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	};
#define ARCG_FT(ORDER, GRPNAME, TITLE, INITIAL, COLOR, LRCH, SRCH) \
	class GrpNATO_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = false; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	}; \
	class GrpCSAT_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = false; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	}; \
	class GrpAAF_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = false; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	};
#define ARCG_SPEC(ORDER, GRPNAME, TITLE, INITIAL, COLOR, ULRCH, LRCH, SRCH, HEADER) \
	class GrpNATO_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = ##HEADER##; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC152", ##ULRCH##}, \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	}; \
	class GrpCSAT_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = ##HEADER##; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC152", ##ULRCH##}, \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	}; \
	class GrpAAF_##GRPNAME## \
	{ \
		color = ##COLOR##; \
		title = ##TITLE##; \
		initial = ##INITIAL##; \
		header = ##HEADER##; \
		order = ##ORDER##; \
		radios[] = { \
			{"ACRE_PRC152", ##ULRCH##}, \
			{"ACRE_PRC148", ##LRCH##}, \
			{"ACRE_PRC343", ##SRCH##} \
		}; \
	};
