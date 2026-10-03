FUNCTION_BLOCK SF_ModeSelector_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
	failed_0: BOOL := FALSE;
	finished_0: BOOL := FALSE;
END_VAR
VAR
	fb_0: SF_ModeSelector_BranchCounters;
	waitCounter_0: UINT := 0;
	testState_0: UINT := 0;
END_VAR



IF NOT failed_0 AND NOT finished_0 THEN
CASE testState_0 OF
0:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
1:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
2:
	IF fb_0.T_1.Q THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_SetMode_Before) AND (NOT (fb_0.T_1.Q) AND ((fb_0.DiagCode = 34818) AND (fb_0.Ready AND (fb_0.SafetyDemand AND (NOT (fb_0.ResetRequest) AND (NOT (fb_0.Error) AND (NOT (fb_0.S_AnyModeSel) AND (NOT (fb_0.S_Mode0Sel) AND (NOT (fb_0.S_Mode1Sel) AND (NOT (fb_0.S_Mode2Sel) AND (NOT (fb_0.S_Mode3Sel) AND (NOT (fb_0.S_Mode4Sel) AND (NOT (fb_0.S_Mode5Sel) AND (NOT (fb_0.S_Mode6Sel) AND NOT (fb_0.S_Mode7Sel))))))))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
3:
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND fb_0.T_1.Q) AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
4:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND fb_0.T_1.Q) AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
5:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND fb_0.T_1.Q) AND (fb_0.DiagCode = 49185)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
6:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND fb_0.T_1.Q) AND (fb_0.DiagCode = 49185)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
7:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND fb_0.T_1.Q) AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
8:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND fb_0.T_1.Q) AND (fb_0.DiagCode = 50208)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
9:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND fb_0.T_1.Q) AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
10:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND fb_0.T_1.Q) AND (fb_0.DiagCode = 50208)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
11:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND fb_0.T_1.Q) AND (fb_0.DiagCode = 50208)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
12:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
13:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
14:
	IF fb_0.T_1.Q THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_SetMode_Before) AND (NOT (fb_0.T_1.Q) AND ((fb_0.DiagCode = 34818) AND (fb_0.Ready AND (fb_0.SafetyDemand AND (NOT (fb_0.ResetRequest) AND (NOT (fb_0.Error) AND (NOT (fb_0.S_AnyModeSel) AND (NOT (fb_0.S_Mode0Sel) AND (NOT (fb_0.S_Mode1Sel) AND (NOT (fb_0.S_Mode2Sel) AND (NOT (fb_0.S_Mode3Sel) AND (NOT (fb_0.S_Mode4Sel) AND (NOT (fb_0.S_Mode5Sel) AND (NOT (fb_0.S_Mode6Sel) AND NOT (fb_0.S_Mode7Sel))))))))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
15:
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND fb_0.T_1.Q) AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
16:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
17:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := TRUE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
18:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := TRUE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
19:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := TRUE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 49169)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
20:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := TRUE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 49169)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
21:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := TRUE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
22:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 50192)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
23:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := TRUE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
24:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 50192)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
25:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 50192)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
26:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
27:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := TRUE; fb_0.S_Mode3 := TRUE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
28:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
29:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
30:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := TRUE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND fb_0.S_Mode0Sel) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
31:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := TRUE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND fb_0.S_Mode0Sel) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
32:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := TRUE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND fb_0.S_Mode0Sel) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
33:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
34:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND fb_0.S_Mode1Sel) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
35:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND fb_0.S_Mode1Sel) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
36:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND fb_0.S_Mode1Sel) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
37:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND fb_0.S_Mode1Sel) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
38:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := TRUE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND fb_0.S_Mode1Sel) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
39:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
40:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := TRUE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND fb_0.S_Mode2Sel) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
41:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := TRUE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND fb_0.S_Mode2Sel) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
42:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
43:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := TRUE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND fb_0.S_Mode3Sel) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
44:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := TRUE; fb_0.S_Mode4 := TRUE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
45:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
46:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := TRUE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND fb_0.S_Mode3Sel) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
47:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := TRUE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND fb_0.S_Mode3Sel) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
48:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := TRUE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND fb_0.S_Mode3Sel) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
49:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
50:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := TRUE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND fb_0.S_Mode4Sel) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
51:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := TRUE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND fb_0.S_Mode4Sel) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
52:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := TRUE; fb_0.S_Mode5 := TRUE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
53:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := TRUE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
54:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := TRUE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND fb_0.S_Mode5Sel) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
55:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := TRUE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND fb_0.S_Mode5Sel) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
56:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := TRUE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND fb_0.S_Mode5Sel) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
57:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
58:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := TRUE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND fb_0.S_Mode6Sel) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
59:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := TRUE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND fb_0.S_Mode6Sel) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
60:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := TRUE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND fb_0.S_Mode6Sel) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
61:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
62:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := TRUE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND fb_0.S_Mode7Sel));
	testState_0 := testState_0 + 1;
63:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := TRUE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND fb_0.S_Mode7Sel));
	testState_0 := testState_0 + 1;
64:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := TRUE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := TRUE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND fb_0.S_AnyModeSel) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND fb_0.S_Mode7Sel));
	testState_0 := testState_0 + 1;
65:
	fb_0.Activate := TRUE; fb_0.AutoSetMode := TRUE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT (((((((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_SetMode_Before)) AND NOT (fb_0.T_1.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)) AND NOT (fb_0.S_AnyModeSel)) AND NOT (fb_0.S_Mode0Sel)) AND NOT (fb_0.S_Mode1Sel)) AND NOT (fb_0.S_Mode2Sel)) AND NOT (fb_0.S_Mode3Sel)) AND NOT (fb_0.S_Mode4Sel)) AND NOT (fb_0.S_Mode5Sel)) AND NOT (fb_0.S_Mode6Sel)) AND NOT (fb_0.S_Mode7Sel)));
	testState_0 := testState_0 + 1;
66:
	fb_0.Activate := FALSE; fb_0.AutoSetMode := FALSE; fb_0.S_SetMode := FALSE; fb_0.S_Unlock := FALSE; fb_0.Reset := FALSE; fb_0.S_Mode0 := FALSE; fb_0.S_Mode1 := FALSE; fb_0.S_Mode2 := FALSE; fb_0.S_Mode3 := FALSE; fb_0.S_Mode4 := FALSE; fb_0.S_Mode5 := FALSE; fb_0.S_Mode6 := FALSE; fb_0.S_Mode7 := FALSE;
	fb_0();
	failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_SetMode_Before) AND (NOT (fb_0.T_1.Q) AND ((fb_0.DiagCode = 0) AND (NOT (fb_0.Ready) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND (NOT (fb_0.Error) AND (NOT (fb_0.S_AnyModeSel) AND (NOT (fb_0.S_Mode0Sel) AND (NOT (fb_0.S_Mode1Sel) AND (NOT (fb_0.S_Mode2Sel) AND (NOT (fb_0.S_Mode3Sel) AND (NOT (fb_0.S_Mode4Sel) AND (NOT (fb_0.S_Mode5Sel) AND (NOT (fb_0.S_Mode6Sel) AND NOT (fb_0.S_Mode7Sel))))))))))))))))));
	testState_0 := testState_0 + 1;
67:
	finished_0 := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
