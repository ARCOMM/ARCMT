class GUI_Groups
{
    idd = 2001;
    movingEnable = false;
    onLoad = "null = _this execVM 'f\ui\groups\init.sqf'";
    class controls
    {
        class Background: IGUIBack
        {
            idc = 2200;
            x = 0.41748 * safezoneW + safezoneX;
            y = 0.335 * safezoneH + safezoneY;
            w = 0.175356 * safezoneW;
            h = 0.077 * safezoneH;
        };
        class Header: RscHeader
        {
            idc = 2201;
            text = "Group ID Manager";
            x = 0.417479 * safezoneW + safezoneX;
            y = 0.3108 * safezoneH + safezoneY;
            w = 0.175356 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class GroupCombo: RscCombo
        {
            idc = 2100;
            x = 0.422637 * safezoneW + safezoneX;
            y = 0.346 * safezoneH + safezoneY;
            w = 0.165041 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class GroupEdit: RscEdit
        {
            idc = 1400;
            x = 0.422637 * safezoneW + safezoneX;
            y = 0.379 * safezoneH + safezoneY;
            w = 0.118623 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class BtnRename: RscButton
        {
            idc = 1600;
            text = "Rename";
            x = 0.546418 * safezoneW + safezoneX;
            y = 0.379 * safezoneH + safezoneY;
            w = 0.0412603 * safezoneW;
            h = 0.022 * safezoneH;
            action = "null = [] execVM 'f\ui\groups\rename.sqf'";
        };
        class BtnClose: RscButton
        {
            idc = 1601;
            text = "Close";
            x = 0.54126 * safezoneW + safezoneX;
            y = 0.4142 * safezoneH + safezoneY;
            w = 0.0515754 * safezoneW;
            h = 0.022 * safezoneH;
            action = "closeDialog 2";
        };
    };
};