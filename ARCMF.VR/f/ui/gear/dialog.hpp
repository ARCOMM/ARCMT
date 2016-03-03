class GUI_Gear
{
	idd = 2000;
	movingEnable = false;

	onLoad = "null = _this execVM 'f\ui\gear\init.sqf'";

	class controls
	{
		class Back: IGUIBack
		{
			idc = 2200;
			x = 0.417479 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.154726 * safezoneW;
			h = 0.165 * safezoneH;
		};
		class Header: RscHeader
		{
			idc = 2201;
			text = "Apply Loadout to Player";
			x = 0.417479 * safezoneW + safezoneX;
			y = 0.3108 * safezoneH + safezoneY;
			w = 0.154726 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class BtnApply: RscButton
		{
			idc = 1600;
			text = "Apply";
			x = 0.495873 * safezoneW + safezoneX;
			y = 0.5022 * safezoneH + safezoneY;
			w = 0.0763316 * safezoneW;
			h = 0.022 * safezoneH;
			action = "null = _this execVM 'f\ui\gear\apply.sqf'";
		};
		class BtnCancel: RscButton
		{
			idc = 1601;
			text = "Cancel";
			x = 0.417479 * safezoneW + safezoneX;
			y = 0.5022 * safezoneH + safezoneY;
			w = 0.0773631 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 1";
		};
		class PlayerList: RscCombo
		{
			idc = 2100;
			x = 0.422637 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.144411 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class TextBox: RscEdit
		{
			idc = 1400;
			text = "r";
			x = 0.422637 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.144411 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class Label: RscStructuredText
		{
			idc = 1100;
			text = "Testing 123";
			x = 0.422637 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.144411 * safezoneW;
			h = 0.077 * safezoneH;
		};
	};
};