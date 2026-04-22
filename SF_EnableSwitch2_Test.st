FUNCTION_BLOCK SF_EnableSwitch2_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
	failed_0: BOOL := FALSE;
	finished_0: BOOL := FALSE;
END_VAR
VAR
	fb_0: SF_EnableSwitch2_BranchCounters;
	waitCounter_0: UINT := 0;
	testState_0: UINT := 0;
END_VAR



IF NOT failed_0 AND NOT finished_0 THEN
CASE testState_0 OF
0:
	fb_0.Activate := FALSE; fb_0.S_SafetyActive := FALSE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.Ready) AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 0)));
	testState_0 := testState_0 + 1;
1:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := FALSE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32770)));
	testState_0 := testState_0 + 1;
2:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := FALSE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32770)));
	testState_0 := testState_0 + 1;
3:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32772)));
	testState_0 := testState_0 + 1;
4:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 34818)));
	testState_0 := testState_0 + 1;
5:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 34818)));
	testState_0 := testState_0 + 1;
6:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND fb_0.S_EnableSwitchOut) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32768)));
	testState_0 := testState_0 + 1;
7:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND fb_0.S_EnableSwitchOut) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32768)));
	testState_0 := testState_0 + 1;
8:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 34818)));
	testState_0 := testState_0 + 1;
9:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := FALSE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32770)));
	testState_0 := testState_0 + 1;
10:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32772)));
	testState_0 := testState_0 + 1;
11:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49168)));
	testState_0 := testState_0 + 1;
12:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49169)));
	testState_0 := testState_0 + 1;
13:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49169)));
	testState_0 := testState_0 + 1;
14:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49168)));
	testState_0 := testState_0 + 1;
15:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49168)));
	testState_0 := testState_0 + 1;
16:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error) AND (fb_0.DiagCode = 50192)));
	testState_0 := testState_0 + 1;
17:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error) AND (fb_0.DiagCode = 50192)));
	testState_0 := testState_0 + 1;
18:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49168)));
	testState_0 := testState_0 + 1;
19:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 34818)));
	testState_0 := testState_0 + 1;
20:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := FALSE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32770)));
	testState_0 := testState_0 + 1;
21:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := FALSE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32770)));
	testState_0 := testState_0 + 1;
22:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32772)));
	testState_0 := testState_0 + 1;
23:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49168)));
	testState_0 := testState_0 + 1;
24:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49169)));
	testState_0 := testState_0 + 1;
25:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error) AND (fb_0.DiagCode = 50192)));
	testState_0 := testState_0 + 1;
26:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_EnableIn := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((fb_0.Ready AND NOT (fb_0.S_EnableSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 34818)));
	testState_0 := testState_0 + 1;
27:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := FALSE; fb_0.S_EnableIn := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((fb_0.Ready AND (NOT (fb_0.S_EnableSwitchOut) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND (NOT (fb_0.Error) AND (fb_0.DiagCode = 32770)))))));
	testState_0 := testState_0 + 1;
28:
	finished_0 := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
