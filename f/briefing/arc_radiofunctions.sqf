// ARC RADIO FUNCTIONS
// For modularity's sake this file is included as stand alone, and may be expanded in the future. 
// ================================================

_relw = player createDiaryRecord ["diary", ["Pre-set LW channels","
<br/>
<font size='18'>Long Range Channels</font><br/>
<br/>
ALPHA SQUAD, channel 1
<br/>
BRAVO SQUAD, channel 2
<br/>
CHARLIE SQUAD, channel 3
<br/>
COMMAND, channel 4
<br/>
AIR, channel 5
<br/>
ARMOR, channel 6
<br/>
SPEC, channel 7
<br/><br/>
<font size ='18'>AN/PRC-148 missing</font><br/>
<execute expression=""
if (local player) then {player addItemToUniform 'ACRE_PRC148';};
"">Add AN/PRC-148 to uniform</execute>.<br/>
<font size ='18'>DO NOT ABUSE THIS FUNCTION</font><br/>
<br/><br/>
<font size ='18'>AN/PRC-343 missing</font><br/>
<execute expression=""
if (local player) then {player addItemToUniform 'ACRE_PRC343';};
"">Add AN/PRC-343 to uniform</execute>.<br/>
<font size ='18'>DO NOT ABUSE THIS FUNCTION</font><br/>
"]];