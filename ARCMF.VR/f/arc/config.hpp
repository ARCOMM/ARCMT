class ARC
{
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
	};
	class tracker
	{
		file = "f\arc\tracker";
		class initTracker {};
		class updateTracker {};
	};
};
