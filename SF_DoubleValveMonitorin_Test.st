FUNCTION_BLOCK SF_DoubleValveMonitoring_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
    failed: BOOL := FALSE;
    finished: BOOL := FALSE;
END_VAR
VAR
    fb: SF_DoubleValveMonitoring_BranchCounters;
	waitCounter: UINT := 0;
	testState: UINT := 0;
END_VAR

IF NOT failed AND NOT finished THEN
CASE testState OF
0:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND NOT (fb.T_Init.Q)) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
1:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := FALSE;
	fb();
	testState := testState + 1;
2:
	IF (NOT (fb.Reset_Before) AND (NOT (fb.S_OutControl_Before) AND (NOT (fb.T_Init.Q) AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 33791) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (NOT (fb.S_ValveOut) AND ((fb.S_ValveStatus = fb.DiagCode) AND (NOT (fb.SafetyDemand) AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 33793)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND NOT (fb.Error)));
	testState := testState + 1;
4:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49408)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
5:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49408)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
6:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 33793)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND NOT (fb.Error)));
	testState := testState + 1;
7:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 33793)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND NOT (fb.Error)));
	testState := testState + 1;
8:
	fb.Activate := FALSE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND NOT (fb.T_Init.Q)) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
9:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := TRUE;
	fb();
	testState := testState + 1;
10:
	IF (fb.Reset_Before AND (NOT (fb.S_OutControl_Before) AND (NOT (fb.T_Init.Q) AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 33791) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (NOT (fb.S_ValveOut) AND ((fb.S_ValveStatus = fb.DiagCode) AND (NOT (fb.SafetyDemand) AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
11:
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 33793)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND NOT (fb.Error)));
	testState := testState + 1;
12:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49153)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
13:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49153)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
14:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 33793)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND NOT (fb.Error)));
	testState := testState + 1;
15:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
16:
	fb.Activate := FALSE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := FALSE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND NOT (fb.T_Init.Q)) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
17:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	testState := testState + 1;
18:
	IF (NOT (fb.Reset_Before) AND (NOT (fb.S_OutControl_Before) AND (NOT (fb.T_Init.Q) AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 33791) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (NOT (fb.S_ValveOut) AND ((fb.S_ValveStatus = fb.DiagCode) AND (NOT (fb.SafetyDemand) AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
19:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 33793)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND NOT (fb.Error)));
	testState := testState + 1;
20:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	testState := testState + 1;
21:
	IF (NOT (fb.Reset_Before) AND (NOT (fb.S_OutControl_Before) AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 34818) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (NOT (fb.S_ValveOut) AND ((fb.S_ValveStatus = fb.DiagCode) AND (fb.SafetyDemand AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
22:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50240)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
23:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49216)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
24:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49216)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
25:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49217)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
26:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49217)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
27:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49216)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
28:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50240)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
29:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49216)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
30:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
31:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	testState := testState + 1;
32:
	IF (NOT (fb.Reset_Before) AND (NOT (fb.S_OutControl_Before) AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 34818) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (NOT (fb.S_ValveOut) AND ((fb.S_ValveStatus = fb.DiagCode) AND (fb.SafetyDemand AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
33:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50240)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
34:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50240)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
35:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49217)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
36:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50240)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
37:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
38:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	testState := testState + 1;
39:
	IF (NOT (fb.Reset_Before) AND (NOT (fb.S_OutControl_Before) AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 34818) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (NOT (fb.S_ValveOut) AND ((fb.S_ValveStatus = fb.DiagCode) AND (fb.SafetyDemand AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
40:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50256)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
41:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49232)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
42:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49232)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
43:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49233)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
44:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49233)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
45:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49232)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
46:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50256)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
47:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49232)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
48:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
49:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	testState := testState + 1;
50:
	IF (NOT (fb.Reset_Before) AND (NOT (fb.S_OutControl_Before) AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 34818) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (NOT (fb.S_ValveOut) AND ((fb.S_ValveStatus = fb.DiagCode) AND (fb.SafetyDemand AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
51:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50256)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
52:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50256)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
53:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49233)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
54:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50256)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
55:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
56:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	testState := testState + 1;
57:
	IF (NOT (fb.Reset_Before) AND (NOT (fb.S_OutControl_Before) AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 34818) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (NOT (fb.S_ValveOut) AND ((fb.S_ValveStatus = fb.DiagCode) AND (fb.SafetyDemand AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
58:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50272)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
59:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49248)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
60:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49248)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
61:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49249)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
62:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49249)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
63:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49248)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
64:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50272)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
65:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49248)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
66:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
67:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	testState := testState + 1;
68:
	IF (NOT (fb.Reset_Before) AND (NOT (fb.S_OutControl_Before) AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 34818) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (NOT (fb.S_ValveOut) AND ((fb.S_ValveStatus = fb.DiagCode) AND (fb.SafetyDemand AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
69:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50272)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
70:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50272)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
71:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49249)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
72:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50272)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
73:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
74:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
75:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
76:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
77:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50240)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
78:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
79:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
80:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
81:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50256)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
82:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
83:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
84:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
85:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50272)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
86:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
87:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
88:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
89:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
90:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
91:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
92:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
93:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
94:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
95:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
96:
	testState := testState + 1;
97:
	IF (NOT (fb.Reset_Before) AND (fb.S_OutControl_Before AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 32800) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (fb.S_ValveOut AND ((fb.S_ValveStatus = fb.DiagCode) AND (NOT (fb.SafetyDemand) AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
98:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49264)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
99:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49264)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
100:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49265)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
101:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49265)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
102:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49264)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
103:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50288)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
104:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49265)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
105:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50288)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
106:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50288)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
107:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49264)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
108:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50288)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
109:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
110:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
111:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
112:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
113:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
114:
	testState := testState + 1;
115:
	IF (NOT (fb.Reset_Before) AND (fb.S_OutControl_Before AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 32800) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (fb.S_ValveOut AND ((fb.S_ValveStatus = fb.DiagCode) AND (NOT (fb.SafetyDemand) AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
116:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49264)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
117:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
118:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
119:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
120:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
121:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
122:
	testState := testState + 1;
123:
	IF (NOT (fb.Reset_Before) AND (fb.S_OutControl_Before AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 32800) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (fb.S_ValveOut AND ((fb.S_ValveStatus = fb.DiagCode) AND (NOT (fb.SafetyDemand) AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
124:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49280)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
125:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49280)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
126:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49281)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
127:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49281)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
128:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49280)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
129:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50304)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
130:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49281)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
131:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50304)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
132:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50304)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
133:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49280)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
134:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50304)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
135:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
136:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
137:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
138:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
139:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
140:
	testState := testState + 1;
141:
	IF (NOT (fb.Reset_Before) AND (fb.S_OutControl_Before AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 32800) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (fb.S_ValveOut AND ((fb.S_ValveStatus = fb.DiagCode) AND (NOT (fb.SafetyDemand) AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
142:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49280)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
143:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
144:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
145:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
146:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
147:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
148:
	testState := testState + 1;
149:
	IF (NOT (fb.Reset_Before) AND (fb.S_OutControl_Before AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 32800) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (fb.S_ValveOut AND ((fb.S_ValveStatus = fb.DiagCode) AND (NOT (fb.SafetyDemand) AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
150:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49296)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
151:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49296)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
152:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49297)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
153:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49297)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
154:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49296)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
155:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50320)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
156:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50320)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
157:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49296)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
158:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 50320)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
159:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
160:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
161:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
162:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
163:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
164:
	testState := testState + 1;
165:
	IF (NOT (fb.Reset_Before) AND (fb.S_OutControl_Before AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 32800) AND (fb.Ready AND (NOT (fb.S_SafeState) AND (fb.S_ValveOut AND ((fb.S_ValveStatus = fb.DiagCode) AND (NOT (fb.SafetyDemand) AND (NOT (fb.ResetRequest) AND NOT (fb.Error)))))))))))) THEN
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
166:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND fb.T_Monitoring.Q) AND (fb.DiagCode = 49296)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
167:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
168:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
169:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
170:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49169)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
171:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49169)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
172:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
173:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
174:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
175:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50192)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
176:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50192)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
177:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49169)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
178:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50192)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
179:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
180:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50192)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
181:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
182:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
183:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
184:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49185)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
185:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49185)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
186:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
187:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
188:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
189:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50208)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
190:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50208)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
191:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49185)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
192:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50208)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
193:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
194:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50208)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
195:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
196:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49200)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
197:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49200)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
198:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49201)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
199:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49201)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
200:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49200)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
201:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
202:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49200)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
203:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50224)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
204:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50224)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
205:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49201)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
206:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50224)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
207:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49200)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
208:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 50224)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND fb.ResetRequest) AND fb.Error));
	testState := testState + 1;
209:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
210:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
211:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
212:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
213:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
214:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
215:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
216:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
217:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
218:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
219:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
220:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
221:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
222:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49264)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
223:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
224:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
225:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
226:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
227:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
228:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
229:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49280)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
230:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
231:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
232:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34820)) AND fb.Ready) AND fb.S_SafeState) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
233:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32800)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
234:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := FALSE; fb.EDM2 := FALSE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	IF fb.T_Monitoring.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
235:
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 32784)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND fb.S_ValveOut) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
236:
	fb.Activate := TRUE; fb.S_OutControl := TRUE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((((((((((((NOT (fb.Reset_Before) AND fb.S_OutControl_Before) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 49296)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND NOT (fb.SafetyDemand)) AND NOT (fb.ResetRequest)) AND fb.Error));
	testState := testState + 1;
237:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := TRUE;
	fb();
	failed := NOT ((((((((((((fb.Reset_Before AND NOT (fb.S_OutControl_Before)) AND fb.T_Init.Q) AND NOT (fb.T_Monitoring.Q)) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_SafeState)) AND NOT (fb.S_ValveOut)) AND (fb.S_ValveStatus = fb.DiagCode)) AND fb.SafetyDemand) AND NOT (fb.ResetRequest)) AND NOT (fb.Error)));
	testState := testState + 1;
238:
	fb.Activate := TRUE; fb.S_OutControl := FALSE; fb.EDM1 := TRUE; fb.EDM2 := TRUE; fb.ValveType := TRUE; fb.S_StartReset := TRUE; fb.Reset := FALSE;
	fb();
	failed := NOT ((fb.T_Monitoring.Q OR (NOT (fb.Reset_Before) AND (NOT (fb.S_OutControl_Before) AND (fb.T_Init.Q AND (NOT (fb.T_Monitoring.Q) AND ((fb.DiagCode = 34820) AND (fb.Ready AND (fb.S_SafeState AND (NOT (fb.S_ValveOut) AND ((fb.S_ValveStatus = fb.DiagCode) AND (fb.SafetyDemand AND (NOT (fb.ResetRequest) AND NOT (fb.Error))))))))))))));
	testState := testState + 1;
239:
	finished := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
