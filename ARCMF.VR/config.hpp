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
		Notes:
			1. If you want a radio to be assigned to all units, put "all".
			2. Possible language values are "english", "greek" and "russian".
-----------------------------------------------------------------------------------------------------------------
	*/
	class acre
	{
		class blufor
		{
			languages[] = {"english","russian","greek"};
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl", "vc", "mmgtl", "mattl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p", "vc", "mmgtl", "mattl"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
		class opfor
		{
			languages[] = {"english","russian","greek"};
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl", "vc", "mmgtl", "mattl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p", "vc", "mmgtl", "mattl"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
		class indfor
		{
			languages[] = {"english","russian","greek"};
			AN_PRC_343[] = {"all"};
			AN_PRC_148[] = {"co", "dc", "ftl", "vc", "mmgtl", "mattl"};
			AN_PRC_152[] = {"co", "dc", "cp", "p", "vc", "mmgtl", "mattl"};
			AN_PRC_117F[] = {};
			AN_PRC_77[] = {};
		};
	};
	/*
-----------------------------------------------------------------------------------------------------------------
		AI GEAR CONFIGURATION
		Description: This is the section where you define loadouts for the AI teams.
		Notes:
			1. AI loadouts are randomized based on their probability settings.
				a. Probability between 0 and 1 (0 = 0%, 1 = 100%).
				b. If array elements don't add up to 1 then ranges are recalculated proportionally.
				c. To remove a default item use an empty string.
			2. This is an array of classnames.
			3. ARC_AI disables the use of grenades and grenade launchers for AI units.
			4. This handles any spawning of units whether it's Zeus, MCC or script.
			5. prioritizeTracerMags - true will only add tracer magazines if available (reverts to standard if none).
			6. removeMedicalItems - true will remove all ACE medical items.
			7. removeNightVision - true will remove all night vision goggles
			8. enabled - true will enable the custom AI gear for the given team, false will not
		Example:
			headgear[] = {
				{"H_HelmetSpecB_snakeskin", 0.8},
				{"", 0.2} // 20% chance to remove all headgear
			};
			rifles[] = {
				{"rhs_weap_m4a1_carryhandle", 0.75},
				{"rhs_weap_m249_pip_L", 0.25}
			};
-----------------------------------------------------------------------------------------------------------------
	*/
	class ai
	{
		class gear
		{
			class blufor
			{
				enabled = false;
				removeNightVision = true;
				removeMedicalItems = true;
				prioritizeTracerMags = true;
				uniforms[] = {};
				vests[] = {};
				headgear[] = {};
				goggles[] = {};
				backpacks[] = {};
				faces[] = {};
				voices[] = {};
				rifles[] = {};
				launchers[] = {};
				attachments[] = {};
			};
			class opfor
			{
				enabled = false;
				removeNightVision = true;
				removeMedicalItems = true;
				prioritizeTracerMags = true;
				uniforms[] = {};
				vests[] = {};
				headgear[] = {};
				goggles[] = {};
				backpacks[] = {};
				faces[] = {};
				voices[] = {};
				rifles[] = {};
				launchers[] = {};
				attachments[] = {};
			};
			class indfor
			{
				enabled = false;
				removeNightVision = true;
				removeMedicalItems = true;
				prioritizeTracerMags = true;
				uniforms[] = {};
				vests[] = {};
				headgear[] = {};
				goggles[] = {};
				backpacks[] = {};
				faces[] = {};
				voices[] = {};
				rifles[] = {};
				launchers[] = {};
				attachments[] = {};
			};
			class civilian
			{
				enabled = false;
				removeNightVision = true;
				removeMedicalItems = true;
				prioritizeTracerMags = true;
				uniforms[] = {};
				vests[] = {};
				headgear[] = {};
				goggles[] = {};
				backpacks[] = {};
				faces[] = {};
				voices[] = {};
				rifles[] = {};
				launchers[] = {};
				attachments[] = {};
			};
		};
	};
};