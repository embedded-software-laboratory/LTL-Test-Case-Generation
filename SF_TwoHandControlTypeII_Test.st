FUNCTION_BLOCK SF_TwoHandControlTypeII_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
	failed: BOOL := FALSE;
	finished: BOOL := FALSE;
END_VAR
VAR
	fb: SF_TwoHandControlTypeII_BranchCounters;
	waitCounter: UINT := 0;
	testState: UINT := 0;
END_VAR

IF NOT failed AND NOT finished THEN
CASE testState OF
0:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 0) AND NOT (fb.Ready)) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
1:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 32769) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
2:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 49168) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
3:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 49168) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
4:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
5:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 0) AND NOT (fb.Ready)) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
6:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 32769) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
7:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 49184) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
8:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 49184) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
9:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
10:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 0) AND NOT (fb.Ready)) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
11:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 32769) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
12:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 49200) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
13:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 49200) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND fb.Error));
	testState := testState + 1;
14:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
15:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 0) AND NOT (fb.Ready)) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
16:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 32769) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
17:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
18:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
19:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 32768) AND fb.Ready) AND fb.S_TwoHandOut) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
20:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 32768) AND fb.Ready) AND fb.S_TwoHandOut) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
21:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34824) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
22:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34824) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
23:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34828) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
24:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34828) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
25:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34826) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
26:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34826) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
27:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34828) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
28:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34824) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
29:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34826) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
30:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34824) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
31:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
32:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 32768) AND fb.Ready) AND fb.S_TwoHandOut) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
33:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34826) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
34:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
35:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 32768) AND fb.Ready) AND fb.S_TwoHandOut) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
36:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34824) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
37:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34828) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
38:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
39:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 32768) AND fb.Ready) AND fb.S_TwoHandOut) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
40:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
41:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34820) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
42:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34820) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
43:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
44:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34820) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
45:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34830) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
46:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34830) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
47:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
48:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34820) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
49:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 32768) AND fb.Ready) AND fb.S_TwoHandOut) AND NOT (fb.SafetyDemand)) AND NOT (fb.Error)));
	testState := testState + 1;
50:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
51:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34822) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
52:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34822) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
53:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
54:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34822) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
55:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34830) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
56:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := FALSE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34818) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
57:
	fb.Activate := TRUE; fb.S_Button1 := FALSE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT ((((((fb.DiagCode = 34822) AND fb.Ready) AND NOT (fb.S_TwoHandOut)) AND fb.SafetyDemand) AND NOT (fb.Error)));
	testState := testState + 1;
58:
	fb.Activate := TRUE; fb.S_Button1 := TRUE; fb.S_Button2 := TRUE;
	fb();
	failed := NOT (((fb.DiagCode = 32768) AND (fb.Ready AND (fb.S_TwoHandOut AND (NOT (fb.SafetyDemand) AND NOT (fb.Error))))));
	testState := testState + 1;
59:
	finished := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
