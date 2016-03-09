class ARC
{
	class ai
	{
		file = "f\arc\ai";
		class applyLoadout {};
		class pickItemFromAIGear {};
		class pickAttachmentsFromAIGear {};
		class setupAI {};
	};
	class halo
	{
		file = "f\arc\halo";
		class halodrop {};
		class haloprep {};
	};
	class helpers
	{
		file = "f\arc\helpers";
		class execHC {};
		class execHC_remote {};
		class fileExists {};
		class getFactionFromSide {};
		class isRespawnEnabled {};
		class buildBriefingFromConfig {};
		class isPlayerReady {};
		class getStartingPos {};
		class getCfgBool {};
	};
	class radios
	{
		file = "f\arc\radios";
		class addMissingRadio {};
	};
	class markers
	{
		file = "f\arc\markers";
		class addTrackingMarker {};
		class getMarkerType {};
		class markerExists {};
	};
	class tracker
	{
		file = "f\arc\tracker";
		class initTracker {};
		class updateTracker {};
	};
	class gear
	{
		file = "f\arc\gear";
		class switchCamo {};
	};
};
