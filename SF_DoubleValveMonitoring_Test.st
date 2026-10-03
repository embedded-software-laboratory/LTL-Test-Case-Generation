FUNCTION_BLOCK SF_DoubleValveMonitoring_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
	failed_0: BOOL := FALSE;
	finished_0: BOOL := FALSE;
END_VAR
VAR
	fb_0: SF_DoubleValveMonitoring_BranchCounters;
	waitCounter_0: UINT := 0;
	testState_0: UINT := 0;
END_VAR



IF NOT failed_0 AND NOT finished_0 THEN
CASE testState_0 OF
0:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND NOT (fb_0.T_Init.Q)) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
1:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND NOT (fb_0.T_Init.Q)) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 33791)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
2:
	IF (fb_0.T_Init.Q AND (fb_0.DiagCode = 33793)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_OutControl_Before) AND (NOT (fb_0.T_Init.Q) AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 33791) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (NOT (fb_0.S_ValveOut) AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
3:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 33793)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
4:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49408)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
5:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49408)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
6:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 33793)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
7:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 33793)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
8:
	fb_0.Activate := FALSE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND NOT (fb_0.T_Init.Q)) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
9:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND NOT (fb_0.T_Init.Q)) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 33791)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
10:
	IF (fb_0.T_Init.Q AND (fb_0.DiagCode = 33793)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((fb_0.Reset_Before AND (NOT (fb_0.S_OutControl_Before) AND (NOT (fb_0.T_Init.Q) AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 33791) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (NOT (fb_0.S_ValveOut) AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
11:
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 33793)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
12:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49153)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
13:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49153)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
14:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 33793)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
15:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
16:
	fb_0.Activate := FALSE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := FALSE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND NOT (fb_0.T_Init.Q)) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
17:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND NOT (fb_0.T_Init.Q)) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 33791)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
18:
	IF (fb_0.T_Init.Q AND (fb_0.DiagCode = 33793)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_OutControl_Before) AND (NOT (fb_0.T_Init.Q) AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 33791) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (NOT (fb_0.S_ValveOut) AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
19:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 33793)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
20:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
21:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 50240)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_OutControl_Before) AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 34818) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (NOT (fb_0.S_ValveOut) AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (fb_0.SafetyDemand AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
22:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50240)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
23:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49216)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
24:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49216)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
25:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49217)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
26:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49217)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
27:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49216)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
28:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50240)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
29:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49216)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
30:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
31:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
32:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 50240)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_OutControl_Before) AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 34818) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (NOT (fb_0.S_ValveOut) AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (fb_0.SafetyDemand AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
33:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50240)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
34:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50240)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
35:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49217)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
36:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50240)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
37:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
38:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
39:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 50256)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_OutControl_Before) AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 34818) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (NOT (fb_0.S_ValveOut) AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (fb_0.SafetyDemand AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
40:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50256)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
41:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49232)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
42:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49232)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
43:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49233)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
44:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49233)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
45:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49232)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
46:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50256)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
47:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49232)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
48:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
49:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
50:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 50256)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_OutControl_Before) AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 34818) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (NOT (fb_0.S_ValveOut) AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (fb_0.SafetyDemand AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
51:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50256)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
52:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50256)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
53:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49233)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
54:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50256)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
55:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
56:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
57:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 50272)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_OutControl_Before) AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 34818) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (NOT (fb_0.S_ValveOut) AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (fb_0.SafetyDemand AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
58:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50272)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
59:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49248)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
60:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49248)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
61:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49249)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
62:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49249)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
63:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49248)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
64:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50272)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
65:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49248)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
66:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
67:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
68:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 50272)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_OutControl_Before) AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 34818) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (NOT (fb_0.S_ValveOut) AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (fb_0.SafetyDemand AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
69:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50272)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
70:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50272)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
71:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49249)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
72:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50272)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
73:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
74:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
75:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
76:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
77:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50240)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
78:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
79:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
80:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
81:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50256)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
82:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
83:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
84:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
85:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50272)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
86:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
87:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
88:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
89:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
90:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
91:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
92:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
93:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
94:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
95:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
96:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 49264)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (fb_0.S_OutControl_Before AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 32800) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (fb_0.S_ValveOut AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
97:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49264)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
98:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49264)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
99:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49265)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
100:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49265)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
101:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49264)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
102:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50288)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
103:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49265)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
104:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50288)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
105:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50288)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
106:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49264)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
107:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50288)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
108:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
109:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
110:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
111:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
112:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
113:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 49264)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (fb_0.S_OutControl_Before AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 32800) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (fb_0.S_ValveOut AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
114:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49264)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
115:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
116:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
117:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
118:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
119:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
120:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 49280)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (fb_0.S_OutControl_Before AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 32800) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (fb_0.S_ValveOut AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
121:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49280)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
122:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49280)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
123:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49281)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
124:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49281)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
125:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49280)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
126:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50304)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
127:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49281)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
128:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50304)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
129:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50304)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
130:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49280)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
131:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50304)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
132:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
133:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
134:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
135:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
136:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
137:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 49280)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (fb_0.S_OutControl_Before AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 32800) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (fb_0.S_ValveOut AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
138:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49280)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
139:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
140:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
141:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
142:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
143:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
144:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 49296)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (fb_0.S_OutControl_Before AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 32800) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (fb_0.S_ValveOut AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
145:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49296)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
146:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49296)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
147:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49297)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
148:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49297)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
149:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49296)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
150:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50320)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
151:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50320)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
152:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49296)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
153:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 50320)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
154:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
155:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
156:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
157:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
158:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
159:
	IF (fb_0.T_Monitoring.Q AND (fb_0.DiagCode = 49296)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.Reset_Before) AND (fb_0.S_OutControl_Before AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 32800) AND (fb_0.Ready AND (NOT (fb_0.S_SafeState) AND (fb_0.S_ValveOut AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (NOT (fb_0.SafetyDemand) AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error)))))))))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
160:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND fb_0.T_Monitoring.Q) AND (fb_0.DiagCode = 49296)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
161:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
162:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
163:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
164:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49169)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
165:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49169)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
166:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
167:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
168:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
169:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50192)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
170:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50192)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
171:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49169)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
172:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50192)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
173:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
174:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50192)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
175:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
176:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
177:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
178:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49185)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
179:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49185)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
180:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
181:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
182:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
183:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50208)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
184:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50208)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
185:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49185)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
186:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50208)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
187:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
188:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50208)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
189:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
190:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49200)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
191:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49200)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
192:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49201)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
193:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49201)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
194:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49200)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
195:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
196:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49200)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
197:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50224)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
198:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50224)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
199:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49201)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
200:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50224)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
201:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49200)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
202:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 50224)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND fb_0.ResetRequest) AND fb_0.Error));
	testState_0 := testState_0 + 1;
203:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
204:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
205:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
206:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
207:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
208:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
209:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
210:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
211:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
212:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
213:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
214:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
215:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
216:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49264)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
217:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
218:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
219:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
220:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
221:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
222:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
223:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49280)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
224:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
225:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
226:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND fb_0.S_SafeState) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
227:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32800)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
228:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := FALSE; fb_0.EDM2 := FALSE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	IF fb_0.T_Monitoring.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
229:
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 32784)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND fb_0.S_ValveOut) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
230:
	fb_0.Activate := TRUE; fb_0.S_OutControl := TRUE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((NOT (fb_0.Reset_Before) AND fb_0.S_OutControl_Before) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 49296)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.ResetRequest)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
231:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := TRUE;
	fb_0();
	failed_0 := NOT ((((((((((((fb_0.Reset_Before AND NOT (fb_0.S_OutControl_Before)) AND fb_0.T_Init.Q) AND NOT (fb_0.T_Monitoring.Q)) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_SafeState)) AND NOT (fb_0.S_ValveOut)) AND (fb_0.S_ValveStatus = fb_0.DiagCode)) AND fb_0.SafetyDemand) AND NOT (fb_0.ResetRequest)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
232:
	fb_0.Activate := TRUE; fb_0.S_OutControl := FALSE; fb_0.EDM1 := TRUE; fb_0.EDM2 := TRUE; fb_0.ValveType := TRUE; fb_0.S_StartReset := TRUE; fb_0.Reset := FALSE;
	fb_0();
	failed_0 := NOT ((fb_0.T_Monitoring.Q OR (NOT (fb_0.Reset_Before) AND (NOT (fb_0.S_OutControl_Before) AND (fb_0.T_Init.Q AND (NOT (fb_0.T_Monitoring.Q) AND ((fb_0.DiagCode = 34820) AND (fb_0.Ready AND (fb_0.S_SafeState AND (NOT (fb_0.S_ValveOut) AND ((fb_0.S_ValveStatus = fb_0.DiagCode) AND (fb_0.SafetyDemand AND (NOT (fb_0.ResetRequest) AND NOT (fb_0.Error))))))))))))));
	testState_0 := testState_0 + 1;
233:
	finished_0 := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
