/*
 * Author: Kingsley
 * Broadcasts given diary parameters to all machines
 *
 * Arguments:
 * TODO
 *
 * Return Value:
 * None
 *
 * Example:
 * TODO
 *
 * Public: Yes
 */

params ["_subject","_args"];
_args params ["_title","_text"];

player createDiaryRecord [_subject, [_title, _text]];

nil