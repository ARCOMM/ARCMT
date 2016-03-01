class CfgARCMF
{
	/*
-----------------------------------------------------------------------------------------------------------------
		BRIEFING CONFIGURATION
		Description: This is the section where you define the text content for the briefing on each team.
		Note: Each text element gets placed on its own line.
-----------------------------------------------------------------------------------------------------------------
	*/
	class briefing
	{
		class blufor
		{
			administration[] = {"This mission doesn't have an ending controller."};
			commandersIntent[] = {"Insert very short summary here."};
			movementPlan[] = {"Insert very short summary here."};
			fireSupportPlan[] = {"Insert very short summary here."};
			specialTasks[] = {"Insert very short summary here."};
			mission[] = {"Secure the crash site and search for survivors."};
			situation[] = {"Insert general information about the situation here."};
			enemyForces[] = {"Insert information about enemy forces here."};
			friendlyForces[] = {"Insert information about friendly forces here."};
		};
		class opfor
		{
			administration[] = {"This mission doesn't have an ending controller."};
			commandersIntent[] = {"Insert very short summary here."};
			movementPlan[] = {"Insert very short summary here."};
			fireSupportPlan[] = {"Insert very short summary here."};
			specialTasks[] = {"Insert very short summary here."};
			mission[] = {"Secure the crash site and search for survivors."};
			situation[] = {"Insert general information about the situation here."};
			enemyForces[] = {"Insert information about enemy forces here."};
			friendlyForces[] = {"Insert information about friendly forces here."};
		};
		class indfor
		{
			administration[] = {"This mission doesn't have an ending controller."};
			commandersIntent[] = {"Insert very short summary here."};
			movementPlan[] = {"Insert very short summary here."};
			fireSupportPlan[] = {"Insert very short summary here."};
			specialTasks[] = {"Insert very short summary here."};
			mission[] = {"Secure the crash site and search for survivors."};
			situation[] = {"Insert general information about the situation here."};
			enemyForces[] = {"Insert information about enemy forces here."};
			friendlyForces[] = {"Insert information about friendly forces here."};
		};
		class civilian
		{
			administration[] = {"This mission doesn't have an ending controller."};
			commandersIntent[] = {"Insert very short summary here."};
			movementPlan[] = {"Insert very short summary here."};
			fireSupportPlan[] = {"Insert very short summary here."};
			specialTasks[] = {"Insert very short summary here."};
			mission[] = {"Secure the crash site and search for survivors."};
			situation[] = {"Insert general information about the situation here."};
			enemyForces[] = {"Insert information about enemy forces here."};
			friendlyForces[] = {"Insert information about friendly forces here."};
		};
		class zeus
		{
			administration[] = {"This mission doesn't have an ending controller."};
			commandersIntent[] = {"Insert very short summary here."};
			movementPlan[] = {"Insert very short summary here."};
			fireSupportPlan[] = {"Insert very short summary here."};
			specialTasks[] = {"Insert very short summary here."};
			mission[] = {"Secure the crash site and search for survivors."};
			situation[] = {"Insert general information about the situation here."};
			enemyForces[] = {"Insert information about enemy forces here."};
			friendlyForces[] = {"Insert information about friendly forces here."};
		};
	};
	/*
-----------------------------------------------------------------------------------------------------------------
		MARKER CONFIGURATION
		Description: This is the section where you define the settings for group and fireteam map markers.
-----------------------------------------------------------------------------------------------------------------
	*/
	class markers
	{
		class blufor
		{
			enableGroupMarkers = true;
			enableFireteamMarkers = true;
		};
		class opfor
		{
			enableGroupMarkers = true;
			enableFireteamMarkers = true;
		};
		class indfor
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
		class blufor
		{
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
		class opfor
		{
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
		class indfor
		{
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
	};
};