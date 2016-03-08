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
			administration[] = {};
			commandersIntent[] = {};
			movementPlan[] = {};
			fireSupportPlan[] = {};
			specialTasks[] = {};
			mission[] = {};
			situation[] = {};
			enemyForces[] = {};
			friendlyForces[] = {};
		};
		class opfor
		{
			administration[] = {};
			commandersIntent[] = {};
			movementPlan[] = {};
			fireSupportPlan[] = {};
			specialTasks[] = {};
			mission[] = {};
			situation[] = {};
			enemyForces[] = {};
			friendlyForces[] = {};
		};
		class indfor
		{
			administration[] = {};
			commandersIntent[] = {};
			movementPlan[] = {};
			fireSupportPlan[] = {};
			specialTasks[] = {};
			mission[] = {};
			situation[] = {};
			enemyForces[] = {};
			friendlyForces[] = {};
		};
		class civilian
		{
			administration[] = {};
			commandersIntent[] = {};
			movementPlan[] = {};
			fireSupportPlan[] = {};
			specialTasks[] = {};
			mission[] = {};
			situation[] = {};
			enemyForces[] = {};
			friendlyForces[] = {};
		};
		class zeus
		{
			administration[] = {};
			commandersIntent[] = {};
			movementPlan[] = {};
			fireSupportPlan[] = {};
			specialTasks[] = {};
			mission[] = {};
			situation[] = {};
			enemyForces[] = {};
			friendlyForces[] = {};
		};
	};
	/*
-----------------------------------------------------------------------------------------------------------------
		MARKER CONFIGURATION
		Description: This is the section where you define the settings for group map markers.
-----------------------------------------------------------------------------------------------------------------
	*/
	class markers
	{
		class blufor
		{
			enableGroupMarkers = true;
		};
		class opfor
		{
			enableGroupMarkers = true;
		};
		class indfor
		{
			enableGroupMarkers = true;
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
			AN_PRC_148[] = {"co", "dc", "ftl", "vc", "mmgtl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p", "vc", "mmgtl"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
		class opfor
		{
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl", "vc", "mmgtl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p", "vc", "mmgtl"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
		class indfor
		{
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl", "vc", "mmgtl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p", "vc", "mmgtl"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
	};
	/*
-----------------------------------------------------------------------------------------------------------------
		AI GEAR CONFIGURATION
		Description: This is the section where you define loadouts for the AI teams.
		Note:
			1. AI loadouts are randomized.
			2. This is an array of classnames.
			3. ARC_AI disables the use of grenades and grenade launchers for AI units
-----------------------------------------------------------------------------------------------------------------
	*/
	class ai
	{
		class gear
		{
			class blufor {
				enabled = true;
				removeNightVision = true;
				removeMedicalItems = true;
				prioritizeTracerMags = true;
				uniforms[] = {"rhs_uniform_msv_emr"};
				vests[] = {"rhs_6b23_digi_6sh92_headset"};
				headgear[] = {""};
				goggles[] = {"rhs_balaclava1_olive"};
				backpacks[] = {};
				faces[] = {};
				voices[] = {};
				rifles[] = {"rhs_weap_ak103"};
				launchers[] = {};
				attachments[] = {"rhs_acc_2dpZenit"};
			};
			class opfor {
				removeMedicalItems = true;
				prioritizeTracerMags = true;
				uniforms[] = {};
				vests[] = {};
				headgear[] = {};
				goggles[] = {};
				backpacks[] = {};
				rifles[] = {};
				pistols[] = {};
				launchers[] = {};
			};
			class indfor {
				removeMedicalItems = true;
				prioritizeTracerMags = true;
				uniforms[] = {};
				vests[] = {};
				headgear[] = {};
				goggles[] = {};
				backpacks[] = {};
				rifles[] = {};
				pistols[] = {};
				launchers[] = {};
			};
			class civilian {
				removeMedicalItems = true;
				prioritizeTracerMags = true;
				uniforms[] = {};
				vests[] = {};
				headgear[] = {};
				goggles[] = {};
				backpacks[] = {};
				rifles[] = {};
				pistols[] = {};
				launchers[] = {};
			};
		};
	};
};