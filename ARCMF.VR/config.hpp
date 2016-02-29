class CfgARCMF
{
	/*
-----------------------------------------------------------------------------------------------------------------
		MARKER CONFIGURATION
		Description: This is the section where you define the settings for group and fireteam map markers
-----------------------------------------------------------------------------------------------------------------
	*/
	class markers
	{
		class nato
		{
			enableGroupMarkers = false;
			enableFireteamMarkers = true;
		};
		class csat
		{
			enableGroupMarkers = true;
			enableFireteamMarkers = true;
		};
		class aaf
		{
			enableGroupMarkers = true;
			enableFireteamMarkers = true;
		};
	};
	/*
-----------------------------------------------------------------------------------------------------------------
		ACRE RADIO CONFIGURATION
		Description: This is the section where you define which radios particular loadouts get for each side.
		Note: If you want a radio to be assigned to all units, put "all".
-----------------------------------------------------------------------------------------------------------------
	*/
	class acre
	{
		class nato
		{
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
		class csat
		{
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
		class aaf
		{
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
	};
};