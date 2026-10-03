FUNCTION_BLOCK SF_Equivalent_U_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
	failed_0: BOOL := FALSE;
	finished_0: BOOL := FALSE;
END_VAR
VAR
	fb_0: SF_Equivalent_U_BranchCounters;
	waitCounter_0: UINT := 0;
	testState_0: UINT := 0;
END_VAR



IF NOT failed_0 AND NOT finished_0 THEN
CASE testState_0 OF
0:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_EquivalentOut)) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
1:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34817)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
2:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34817)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
3:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := TRUE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
4:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := FALSE;
	fb_0();
	IF fb_0.T_1.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
5:
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34817)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
6:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := TRUE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
7:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := TRUE; fb_0.S_ChannelB := TRUE;
	fb_0();
	IF fb_0.T_1.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
8:
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND fb_0.S_EquivalentOut) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
9:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := TRUE; fb_0.S_ChannelB := TRUE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND fb_0.S_EquivalentOut) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
10:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := TRUE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34822)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
11:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := FALSE;
	fb_0();
	IF fb_0.T_1.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
12:
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34817)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
13:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := TRUE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
14:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := FALSE;
	fb_0();
	IF fb_0.T_1.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
15:
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34817)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
16:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := TRUE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
17:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := TRUE; fb_0.S_ChannelB := TRUE;
	fb_0();
	IF fb_0.T_1.Q THEN
		finished_0 := TRUE;
	ELSE
		testState_0 := testState_0 + 1;
	END_IF
18:
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND fb_0.S_EquivalentOut) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
19:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34817)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
20:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := TRUE; fb_0.S_ChannelB := TRUE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 32768)) AND fb_0.Ready) AND fb_0.S_EquivalentOut) AND NOT (fb_0.SafetyDemand)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
21:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := TRUE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34822)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
22:
	IF (fb_0.T_1.Q AND (fb_0.DiagCode = 49200)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.T_1.Q) AND ((fb_0.DiagCode = 34822) AND (fb_0.Ready AND (NOT (fb_0.S_EquivalentOut) AND (fb_0.SafetyDemand AND NOT (fb_0.Error)))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
23:
	failed_0 := NOT ((((((fb_0.T_1.Q AND (fb_0.DiagCode = 49200)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND NOT (fb_0.SafetyDemand)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
24:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := TRUE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.T_1.Q AND (fb_0.DiagCode = 49200)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND NOT (fb_0.SafetyDemand)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
25:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34817)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
26:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := TRUE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34818)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
27:
	IF (fb_0.T_1.Q AND (fb_0.DiagCode = 49168)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.T_1.Q) AND ((fb_0.DiagCode = 34818) AND (fb_0.Ready AND (NOT (fb_0.S_EquivalentOut) AND (fb_0.SafetyDemand AND NOT (fb_0.Error)))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
28:
	failed_0 := NOT ((((((fb_0.T_1.Q AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND NOT (fb_0.SafetyDemand)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
29:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := TRUE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((fb_0.T_1.Q AND (fb_0.DiagCode = 49168)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND NOT (fb_0.SafetyDemand)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
30:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34817)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
31:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := TRUE;
	fb_0();
	failed_0 := NOT ((((((NOT (fb_0.T_1.Q) AND (fb_0.DiagCode = 34820)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND fb_0.SafetyDemand) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
32:
	IF (fb_0.T_1.Q AND (fb_0.DiagCode = 49184)) THEN
		waitCounter_0 := 0;
		testState_0 := testState_0 + 1;
	ELSE
		failed_0 := NOT ((NOT (fb_0.T_1.Q) AND ((fb_0.DiagCode = 34820) AND (fb_0.Ready AND (NOT (fb_0.S_EquivalentOut) AND (fb_0.SafetyDemand AND NOT (fb_0.Error)))))));
		IF waitCounter_0 > 100 THEN
			finished_0 := TRUE;
		ELSE
			waitCounter_0 := waitCounter_0 + 1;
			fb_0();
		END_IF
	END_IF
33:
	failed_0 := NOT ((((((fb_0.T_1.Q AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND NOT (fb_0.SafetyDemand)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
34:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := TRUE;
	fb_0();
	failed_0 := NOT ((((((fb_0.T_1.Q AND (fb_0.DiagCode = 49184)) AND fb_0.Ready) AND NOT (fb_0.S_EquivalentOut)) AND NOT (fb_0.SafetyDemand)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
35:
	fb_0.Activate := TRUE; fb_0.S_ChannelA := FALSE; fb_0.S_ChannelB := FALSE;
	fb_0();
	failed_0 := NOT ((NOT (fb_0.T_1.Q) AND ((fb_0.DiagCode = 34817) AND (fb_0.Ready AND (NOT (fb_0.S_EquivalentOut) AND (fb_0.SafetyDemand AND NOT (fb_0.Error)))))));
	testState_0 := testState_0 + 1;
36:
	finished_0 := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
