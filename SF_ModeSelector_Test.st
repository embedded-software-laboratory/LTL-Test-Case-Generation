FUNCTION_BLOCK SF_ModeSelector_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
	failed: BOOL := FALSE;
	finished: BOOL := FALSE;
END_VAR
VAR
	fb: SF_ModeSelector_BranchCounters;
	waitCounter: UINT := 0;
	testState: UINT := 0;
END_VAR

IF NOT failed AND NOT finished THEN
CASE testState OF
0:
	fb.Activate := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
1:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	testState := testState + 1;
2:
	IF (NOT (fb.R_TRIGatReset.Q) AND (NOT (fb.R_TRIGatSetMode.Q) AND (NOT (fb.T_1.Q) AND ((fb.DiagCode = 34818) AND (fb.Ready AND (fb.SafetyDemand AND (NOT (fb.ResetRequest) AND (NOT (fb.Error) AND (NOT (fb.S_AnyModeSel) AND (NOT (fb.S_Mode0Sel) AND (NOT (fb.S_Mode1Sel) AND (NOT (fb.S_Mode2Sel) AND (NOT (fb.S_Mode3Sel) AND (NOT (fb.S_Mode4Sel) AND (NOT (fb.S_Mode5Sel) AND (NOT (fb.S_Mode6Sel) AND NOT (fb.S_Mode7Sel))))))))))))))))) THEN
		IF waitCounter > 100 THEN
			finished := TRUE;
		ELSE
			waitCounter := waitCounter + 1;
			fb();
		END_IF
	ELSE
		waitCounter := 0;
		testState := testState + 1;
	END_IF
3:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND fb.T_1.Q) AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
4:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((fb.R_TRIGatReset.Q AND NOT (fb.R_TRIGatSetMode.Q)) AND fb.T_1.Q) AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
5:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND fb.T_1.Q) AND (fb.DiagCode = 49185)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
6:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND fb.T_1.Q) AND (fb.DiagCode = 49185)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
7:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND fb.T_1.Q) AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
8:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND fb.T_1.Q) AND (fb.DiagCode = 50208)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
9:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND fb.T_1.Q) AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
10:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND fb.T_1.Q) AND (fb.DiagCode = 50208)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
11:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND fb.T_1.Q) AND (fb.DiagCode = 50208)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
12:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((fb.R_TRIGatReset.Q AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
13:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
14:
	testState := testState + 1;
15:
	IF (NOT (fb.R_TRIGatReset.Q) AND (NOT (fb.R_TRIGatSetMode.Q) AND (NOT (fb.T_1.Q) AND ((fb.DiagCode = 34818) AND (fb.Ready AND (fb.SafetyDemand AND (NOT (fb.ResetRequest) AND (NOT (fb.Error) AND (NOT (fb.S_AnyModeSel) AND (NOT (fb.S_Mode0Sel) AND (NOT (fb.S_Mode1Sel) AND (NOT (fb.S_Mode2Sel) AND (NOT (fb.S_Mode3Sel) AND (NOT (fb.S_Mode4Sel) AND (NOT (fb.S_Mode5Sel) AND (NOT (fb.S_Mode6Sel) AND NOT (fb.S_Mode7Sel))))))))))))))))) THEN
		IF waitCounter > 100 THEN
			finished := TRUE;
		ELSE
			waitCounter := waitCounter + 1;
			fb();
		END_IF
	ELSE
		waitCounter := 0;
		testState := testState + 1;
	END_IF
16:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND fb.T_1.Q) AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
17:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((fb.R_TRIGatReset.Q AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
18:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := TRUE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
19:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := TRUE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((fb.R_TRIGatReset.Q AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
20:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := TRUE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 49169)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
21:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := TRUE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 49169)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
22:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := TRUE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
23:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 50192)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
24:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := TRUE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
25:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 50192)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
26:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 50192)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
27:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((fb.R_TRIGatReset.Q AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
28:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := TRUE; fb.S_Mode3 := TRUE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
29:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((fb.R_TRIGatReset.Q AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
30:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
31:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := TRUE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
32:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND fb.S_Mode0Sel) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
33:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := TRUE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND fb.S_Mode0Sel) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
34:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := TRUE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND fb.S_Mode0Sel) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
35:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
36:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
37:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND fb.S_Mode1Sel) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
38:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND fb.S_Mode1Sel) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
39:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND fb.S_Mode1Sel) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
40:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND fb.S_Mode1Sel) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
41:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := TRUE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND fb.S_Mode1Sel) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
42:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
43:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := TRUE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
44:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND fb.S_Mode2Sel) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
45:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := TRUE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND fb.S_Mode2Sel) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
46:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
47:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := TRUE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
48:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND fb.S_Mode3Sel) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
49:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := TRUE; fb.S_Mode4 := TRUE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
50:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((fb.R_TRIGatReset.Q AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
51:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := TRUE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
52:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND fb.S_Mode3Sel) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
53:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := TRUE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND fb.S_Mode3Sel) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
54:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := TRUE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND fb.S_Mode3Sel) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
55:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
56:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := TRUE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
57:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND fb.S_Mode4Sel) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
58:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := TRUE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND fb.S_Mode4Sel) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
59:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := TRUE; fb.S_Mode5 := TRUE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
60:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := TRUE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((fb.R_TRIGatReset.Q AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
61:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := TRUE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
62:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND fb.S_Mode5Sel) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
63:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := TRUE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND fb.S_Mode5Sel) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
64:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := TRUE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND fb.S_Mode5Sel) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
65:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
66:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := TRUE; fb.S_Mode7 := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
67:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND fb.S_Mode6Sel) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
68:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := TRUE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND fb.S_Mode6Sel) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
69:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := TRUE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND fb.S_Mode6Sel) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
70:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
71:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := TRUE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
72:
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND fb.S_Mode7Sel));
	testState := testState + 1;
73:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := TRUE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND fb.S_Mode7Sel));
	testState := testState + 1;
74:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := TRUE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := TRUE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 32768)) AND fb.Ready) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND fb.S_AnyModeSel) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND fb.S_Mode7Sel));
	testState := testState + 1;
75:
	fb.Activate := TRUE; fb.AutoSetMode := TRUE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT (((((((((((((((((NOT (fb.R_TRIGatReset.Q) AND NOT (fb.R_TRIGatSetMode.Q)) AND NOT (fb.T_1.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)) AND NOT (fb.S_AnyModeSel)) AND NOT (fb.S_Mode0Sel)) AND NOT (fb.S_Mode1Sel)) AND NOT (fb.S_Mode2Sel)) AND NOT (fb.S_Mode3Sel)) AND NOT (fb.S_Mode4Sel)) AND NOT (fb.S_Mode5Sel)) AND NOT (fb.S_Mode6Sel)) AND NOT (fb.S_Mode7Sel)));
	testState := testState + 1;
76:
	fb.Activate := FALSE; fb.AutoSetMode := FALSE; fb.S_SetMode := FALSE; fb.S_Unlock := FALSE; fb.Reset := FALSE; fb.S_Mode0 := FALSE; fb.S_Mode1 := FALSE; fb.S_Mode2 := FALSE; fb.S_Mode3 := FALSE; fb.S_Mode4 := FALSE; fb.S_Mode5 := FALSE; fb.S_Mode6 := FALSE; fb.S_Mode7 := FALSE;
	fb();
	failed := NOT ((NOT (fb.R_TRIGatReset.Q) AND (NOT (fb.R_TRIGatSetMode.Q) AND (NOT (fb.T_1.Q) AND ((fb.DiagCode = 0) AND (NOT (fb.Ready) AND (NOT (fb.SafetyDemand) AND (NOT (fb.ResetRequest) AND (NOT (fb.Error) AND (NOT (fb.S_AnyModeSel) AND (NOT (fb.S_Mode0Sel) AND (NOT (fb.S_Mode1Sel) AND (NOT (fb.S_Mode2Sel) AND (NOT (fb.S_Mode3Sel) AND (NOT (fb.S_Mode4Sel) AND (NOT (fb.S_Mode5Sel) AND (NOT (fb.S_Mode6Sel) AND NOT (fb.S_Mode7Sel))))))))))))))))));
	testState := testState + 1;
77:
	finished := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
