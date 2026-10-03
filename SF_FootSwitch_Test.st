FUNCTION_BLOCK SF_FootSwitch_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
	failed_0: BOOL := FALSE;
	finished_0: BOOL := FALSE;
END_VAR
VAR
	fb_0: SF_FootSwitch_BranchCounters;
	waitCounter_0: UINT := 0;
	testState_0: UINT := 0;
END_VAR



IF NOT failed_0 AND NOT finished_0 THEN
CASE testState_0 OF
0:
	fb_0.Activate := FALSE; fb_0.S_SafetyActive := FALSE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := FALSE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((NOT (fb_0.Ready) AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 0)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
1:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := FALSE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32772)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
2:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := FALSE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32772)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
3:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32773)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
4:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32774)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
5:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32774)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
6:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := TRUE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND fb_0.S_FootSwitchOut) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32768)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND fb_0.Position2) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
7:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := TRUE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND fb_0.S_FootSwitchOut) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32768)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND fb_0.Position2) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
8:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32774)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
9:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := FALSE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32772)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
10:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32773)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
11:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := TRUE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49440)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND fb_0.Position2) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
12:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := TRUE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49440)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND fb_0.Position2) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
13:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49472)) AND fb_0.Reset_Before) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
14:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49473)) AND fb_0.Reset_Before) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
15:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49473)) AND fb_0.Reset_Before) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
16:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49472)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
17:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49472)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
18:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := TRUE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49440)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND fb_0.Position2) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
19:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49472)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
20:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32774)) AND fb_0.Reset_Before) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
21:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := FALSE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 34832)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND NOT (fb_0.Position2)) AND fb_0.Position3));
	testState_0 := testState_0 + 1;
22:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := TRUE; fb_0.S_FootSwitchCh2 := FALSE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 34832)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND NOT (fb_0.Position2)) AND fb_0.Position3));
	testState_0 := testState_0 + 1;
23:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32774)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
24:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := TRUE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND fb_0.S_FootSwitchOut) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 32768)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND fb_0.Position2) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
25:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := FALSE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 34832)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND NOT (fb_0.Position2)) AND fb_0.Position3));
	testState_0 := testState_0 + 1;
26:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := TRUE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49504)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND fb_0.Position2) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
27:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := TRUE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49504)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND fb_0.Position2) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
28:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49536)) AND fb_0.Reset_Before) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
29:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49537)) AND fb_0.Reset_Before) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
30:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49537)) AND fb_0.Reset_Before) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
31:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49536)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
32:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49536)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
33:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := TRUE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49504)) AND NOT (fb_0.Reset_Before)) AND NOT (fb_0.Position1)) AND fb_0.Position2) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
34:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND (fb_0.DiagCode = 49536)) AND NOT (fb_0.Reset_Before)) AND fb_0.Position1) AND NOT (fb_0.Position2)) AND NOT (fb_0.Position3)));
	testState_0 := testState_0 + 1;
35:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := TRUE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := FALSE; fb_0.S_AutoReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((fb_0.Ready AND NOT (fb_0.S_FootSwitchOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND (fb_0.DiagCode = 34832)) AND fb_0.Reset_Before) AND NOT (fb_0.Position1)) AND NOT (fb_0.Position2)) AND fb_0.Position3));
	testState_0 := testState_0 + 1;
36:
	fb_0.Activate := TRUE; fb_0.S_SafetyActive := FALSE; fb_0.S_FootSwitchCh1 := FALSE; fb_0.S_FootSwitchCh2 := TRUE; fb_0.S_AutoReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((fb_0.Ready AND (NOT (fb_0.S_FootSwitchOut) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND (NOT (fb_0.Error) AND ((fb_0.DiagCode = 32772) AND (NOT (fb_0.Reset_Before) AND (NOT (fb_0.Position1) AND (NOT (fb_0.Position2) AND fb_0.Position3))))))))));
	testState_0 := testState_0 + 1;
37:
	finished_0 := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
