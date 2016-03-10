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
                class rifleman {
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
                class grenadier {
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
                class autorifleman {
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
                class antitank {
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
			class opfor {
				enabled = true;
				removeNightVision = true;
				removeMedicalItems = true;
				prioritizeTracerMags = true;
				uniforms[] = {"U_B_HeliPilotCoveralls", 1};
				vests[] = {};
				headgear[] = {};
				goggles[] = {};
				backpacks[] = {};
				faces[] = {};
				voices[] = {};
				rifles[] = {};
				launchers[] = {};
				attachments[] = {}; 
                class rifleman {
                    removeNightVision = true;
                    removeMedicalItems = true;
                    prioritizeTracerMags = true;
                    uniforms[] = {"U_B_HeliPilotCoveralls", 1};
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
                class grenadier {
                    removeNightVision = true;
                    removeMedicalItems = true;
                    prioritizeTracerMags = true;
                    uniforms[] = {"U_B_HeliPilotCoveralls", 1};
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
                class autorifleman {
                    removeNightVision = true;
                    removeMedicalItems = true;
                    prioritizeTracerMags = true;
                    uniforms[] = {"U_B_HeliPilotCoveralls", 1};
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
                class antitank {
                    removeNightVision = true;
                    removeMedicalItems = true;
                    prioritizeTracerMags = true;
                    uniforms[] = {"U_B_HeliPilotCoveralls", 1};
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
			class indfor {
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
                class rifleman {
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
                class grenadier {
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
                class autorifleman {
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
                class antitank {
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
			class civilian {
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
                class rifleman {
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
                class grenadier {
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
                class autorifleman {
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
                class antitank {
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
};