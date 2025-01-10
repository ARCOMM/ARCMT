// ACE Weather
/*
	ACE Weather overrides mission maker environmental options,
	as such it is disabled here. If you want semi-random
	weather, feel free to enable it below.

	Do note that weather wind simulation is not the same
	as wind deflection.
*/
force ace_weather_enabled = false;
force ace_weather_windSimulation = false;

// ARC Misc
/*
	This setting disables visibility checks for non-local units.
	In a general sense, this means that players will not have to
	process visibility for AI units, which will save some CPU
	time. This however means that scripts relying on accurate
	knowsAbout values, such as detected by triggers, are not
	guaranteed to function on clients.

	When using such scripting, disable this setting.

	https://community.bistudio.com/wiki/disableRemoteSensors
*/
force arc_dif_main_disableRemoteSensors = true;
