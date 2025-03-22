FUNCTION_BLOCK SF_Equivalent_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
	failed: BOOL := FALSE;
	finished: BOOL := FALSE;
END_VAR
VAR
	fb: SF_Equivalent_BranchCounters;
	waitCounter: UINT := 0;
	testState: UINT := 0;
END_VAR

IF NOT failed AND NOT finished THEN
CASE testState OF
0:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_EquivalentOut)) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
1:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34817)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
2:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34817)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
3:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
4:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
5:
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34817)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
6:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34818)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
7:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := TRUE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
8:
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 32768)) AND fb.Ready) AND fb.S_EquivalentOut) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
9:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := TRUE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 32768)) AND fb.Ready) AND fb.S_EquivalentOut) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
10:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := TRUE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34822)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
11:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
12:
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34817)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
13:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := TRUE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34820)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
14:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := FALSE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
15:
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34817)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
16:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := TRUE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34820)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
17:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := TRUE;
	fb();
	IF fb.T_1.Q THEN
		finished := TRUE;
	ELSE
		testState := testState + 1;
	END_IF
18:
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 32768)) AND fb.Ready) AND fb.S_EquivalentOut) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
19:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 34817)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
20:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := TRUE;
	fb();
	failed := NOT ((((((NOT (fb.T_1.Q) AND (fb.DiagCode = 32768)) AND fb.Ready) AND fb.S_EquivalentOut) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
21:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := FALSE;
	fb();
	IF ((NOT (fb.Activate) OR NOT (fb.S_ChannelA)) OR fb.S_ChannelB) THEN
		finished := TRUE;
	END_IF
	testState := testState + 1;
22:
	IF (NOT (fb.T_1.Q) AND ((fb.DiagCode = 34822) AND (fb.Ready AND (NOT (fb.S_EquivalentOut) AND (fb.SafetyDemand AND NOT (fb.Error)))))) THEN
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
23:
	failed := NOT ((((((fb.T_1.Q AND (fb.DiagCode = 49200)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
24:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((((((fb.T_1.Q AND (fb.DiagCode = 49200)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
25:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((((((fb.T_1.Q AND (fb.DiagCode = 34817)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
26:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := FALSE;
	fb();
	IF ((NOT (fb.Activate) OR NOT (fb.S_ChannelA)) OR fb.S_ChannelB) THEN
		finished := TRUE;
	END_IF
	testState := testState + 1;
27:
	IF (NOT (fb.T_1.Q) AND ((fb.DiagCode = 34818) AND (fb.Ready AND (NOT (fb.S_EquivalentOut) AND (fb.SafetyDemand AND NOT (fb.Error)))))) THEN
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
28:
	failed := NOT ((((((fb.T_1.Q AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
29:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((((((fb.T_1.Q AND (fb.DiagCode = 49168)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
30:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((((((fb.T_1.Q AND (fb.DiagCode = 34817)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
31:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := TRUE;
	fb();
	IF ((NOT (fb.Activate) OR fb.S_ChannelA) OR NOT (fb.S_ChannelB)) THEN
		finished := TRUE;
	END_IF
	testState := testState + 1;
32:
	IF (NOT (fb.T_1.Q) AND ((fb.DiagCode = 34820) AND (fb.Ready AND (NOT (fb.S_EquivalentOut) AND (fb.SafetyDemand AND NOT (fb.Error)))))) THEN
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
	failed := NOT ((((((fb.T_1.Q AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
34:
	fb.Activate := TRUE; fb.S_ChannelA := TRUE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((((((fb.T_1.Q AND (fb.DiagCode = 49184)) AND fb.Ready) AND NOT (fb.S_EquivalentOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
35:
	fb.Activate := TRUE; fb.S_ChannelA := FALSE; fb.S_ChannelB := FALSE;
	fb();
	failed := NOT ((fb.T_1.Q AND ((fb.DiagCode = 34817) AND (fb.Ready AND (NOT (fb.S_EquivalentOut) AND (fb.SafetyDemand AND NOT (fb.Error)))))));
	testState := testState + 1;
36:
	finished := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
