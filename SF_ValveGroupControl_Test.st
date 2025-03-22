FUNCTION_BLOCK SF_ValveGroupControl_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
	failed: BOOL := FALSE;
	finished: BOOL := FALSE;
END_VAR
VAR
	fb: SF_ValveGroupControl_BranchCounters;
	waitCounter: UINT := 0;
	testState: UINT := 0;
END_VAR

IF NOT failed AND NOT finished THEN
CASE testState OF
0:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
1:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
2:
	fb.Activate := TRUE; fb.UsedValves:=-1; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 49152) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
3:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 49152) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
4:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
5:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
6:
	fb.Activate := TRUE; fb.UsedValves:=9; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 49152) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
7:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
8:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
9:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
10:
	fb.Activate := TRUE; fb.UsedValves:=1; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
11:
	fb.Activate := TRUE; fb.UsedValves:=2; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 3)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
12:
	fb.Activate := TRUE; fb.UsedValves:=3; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 7)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
13:
	fb.Activate := TRUE; fb.UsedValves:=4; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 15)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
14:
	fb.Activate := TRUE; fb.UsedValves:=5; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 31)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
15:
	fb.Activate := TRUE; fb.UsedValves:=6; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 63)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
16:
	fb.Activate := TRUE; fb.UsedValves:=7; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 127)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
17:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
18:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50448) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
19:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50448) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
20:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
21:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
22:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
23:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50464) AND (fb.AdditionalDiagCode = 2)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
24:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50464) AND (fb.AdditionalDiagCode = 2)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
25:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
26:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
27:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
28:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50480) AND (fb.AdditionalDiagCode = 4)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
29:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50480) AND (fb.AdditionalDiagCode = 4)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
30:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
31:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
32:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
33:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50496) AND (fb.AdditionalDiagCode = 8)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
34:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50496) AND (fb.AdditionalDiagCode = 8)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
35:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
36:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
37:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
38:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50512) AND (fb.AdditionalDiagCode = 16)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
39:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50512) AND (fb.AdditionalDiagCode = 16)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
40:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
41:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
42:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
43:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50528) AND (fb.AdditionalDiagCode = 32)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
44:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50528) AND (fb.AdditionalDiagCode = 32)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
45:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
46:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
47:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
48:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50544) AND (fb.AdditionalDiagCode = 64)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
49:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50544) AND (fb.AdditionalDiagCode = 64)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
50:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
51:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
52:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
53:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50560) AND (fb.AdditionalDiagCode = 128)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
54:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50560) AND (fb.AdditionalDiagCode = 128)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
55:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
56:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
57:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
58:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33791; fb.S_ValveStatus2:=33791; fb.S_ValveStatus3:=33791; fb.S_ValveStatus4:=33791; fb.S_ValveStatus5:=33791; fb.S_ValveStatus6:=33791; fb.S_ValveStatus7:=33791; fb.S_ValveStatus8:=33791;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
59:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33791; fb.S_ValveStatus2:=33791; fb.S_ValveStatus3:=33791; fb.S_ValveStatus4:=33791; fb.S_ValveStatus5:=33791; fb.S_ValveStatus6:=33791; fb.S_ValveStatus7:=33791; fb.S_ValveStatus8:=33793;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 127)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
60:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33791; fb.S_ValveStatus2:=33791; fb.S_ValveStatus3:=33791; fb.S_ValveStatus4:=33791; fb.S_ValveStatus5:=33791; fb.S_ValveStatus6:=33791; fb.S_ValveStatus7:=33793; fb.S_ValveStatus8:=33793;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 63)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
61:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33791; fb.S_ValveStatus2:=33791; fb.S_ValveStatus3:=33791; fb.S_ValveStatus4:=33791; fb.S_ValveStatus5:=33791; fb.S_ValveStatus6:=33793; fb.S_ValveStatus7:=33793; fb.S_ValveStatus8:=33793;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 31)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
62:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33791; fb.S_ValveStatus2:=33791; fb.S_ValveStatus3:=33791; fb.S_ValveStatus4:=33791; fb.S_ValveStatus5:=33793; fb.S_ValveStatus6:=33793; fb.S_ValveStatus7:=33793; fb.S_ValveStatus8:=33793;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 15)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
63:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33791; fb.S_ValveStatus2:=33791; fb.S_ValveStatus3:=33791; fb.S_ValveStatus4:=33793; fb.S_ValveStatus5:=33793; fb.S_ValveStatus6:=33793; fb.S_ValveStatus7:=33793; fb.S_ValveStatus8:=33793;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 7)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
64:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33791; fb.S_ValveStatus2:=33791; fb.S_ValveStatus3:=33793; fb.S_ValveStatus4:=33793; fb.S_ValveStatus5:=33793; fb.S_ValveStatus6:=33793; fb.S_ValveStatus7:=33793; fb.S_ValveStatus8:=33793;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 3)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
65:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33791; fb.S_ValveStatus2:=33793; fb.S_ValveStatus3:=33793; fb.S_ValveStatus4:=33793; fb.S_ValveStatus5:=33793; fb.S_ValveStatus6:=33793; fb.S_ValveStatus7:=33793; fb.S_ValveStatus8:=33793;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
66:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33793; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=33793; fb.S_ValveStatus4:=33793; fb.S_ValveStatus5:=33793; fb.S_ValveStatus6:=33793; fb.S_ValveStatus7:=33793; fb.S_ValveStatus8:=33793;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32770) AND (fb.AdditionalDiagCode = 2)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
67:
	fb.Activate := TRUE; fb.UsedValves:=0; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
68:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=49216; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50192) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
69:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=49216; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50192) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
70:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
71:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=49216; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50208) AND (fb.AdditionalDiagCode = 2)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
72:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=49216; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50208) AND (fb.AdditionalDiagCode = 2)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
73:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
74:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=49216; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50224) AND (fb.AdditionalDiagCode = 4)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
75:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=49216; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50224) AND (fb.AdditionalDiagCode = 4)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
76:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
77:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=49216; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50240) AND (fb.AdditionalDiagCode = 8)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
78:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=49216; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50240) AND (fb.AdditionalDiagCode = 8)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
79:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
80:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=49216; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50256) AND (fb.AdditionalDiagCode = 16)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
81:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=49216; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50256) AND (fb.AdditionalDiagCode = 16)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
82:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
83:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=49216; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50272) AND (fb.AdditionalDiagCode = 32)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
84:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=49216; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50272) AND (fb.AdditionalDiagCode = 32)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
85:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
86:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=49216; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50288) AND (fb.AdditionalDiagCode = 64)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
87:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=49216; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50288) AND (fb.AdditionalDiagCode = 64)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
88:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
89:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=49216;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50304) AND (fb.AdditionalDiagCode = 128)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
90:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=49216;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50304) AND (fb.AdditionalDiagCode = 128)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
91:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
92:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32788) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
93:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33791; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32788) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
94:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33793; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
95:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32804) AND (fb.AdditionalDiagCode = 2)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
96:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=33791; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32804) AND (fb.AdditionalDiagCode = 2)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
97:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=33793; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
98:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32820) AND (fb.AdditionalDiagCode = 4)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
99:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=33791; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32820) AND (fb.AdditionalDiagCode = 4)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
100:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=33793; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
101:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32836) AND (fb.AdditionalDiagCode = 8)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
102:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=33791; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32836) AND (fb.AdditionalDiagCode = 8)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
103:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=33793; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
104:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32852) AND (fb.AdditionalDiagCode = 16)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
105:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=33791; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32852) AND (fb.AdditionalDiagCode = 16)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
106:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=33793; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
107:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32868) AND (fb.AdditionalDiagCode = 32)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
108:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=33791; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32868) AND (fb.AdditionalDiagCode = 32)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
109:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=33793; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
110:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32884) AND (fb.AdditionalDiagCode = 64)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
111:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=33791; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32884) AND (fb.AdditionalDiagCode = 64)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
112:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=33793; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
113:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32900) AND (fb.AdditionalDiagCode = 128)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
114:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=33791;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32900) AND (fb.AdditionalDiagCode = 128)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
115:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=33793;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
116:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
117:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=32800; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND fb.S_ValveOut1) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
118:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=32800; fb.S_ValveStatus2:=32800; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 3)) AND fb.Ready) AND fb.S_ValveOut1) AND fb.S_ValveOut2) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
119:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=32800; fb.S_ValveStatus2:=32800; fb.S_ValveStatus3:=32800; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 7)) AND fb.Ready) AND fb.S_ValveOut1) AND fb.S_ValveOut2) AND fb.S_ValveOut3) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
120:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=32800; fb.S_ValveStatus2:=32800; fb.S_ValveStatus3:=32800; fb.S_ValveStatus4:=32800; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 15)) AND fb.Ready) AND fb.S_ValveOut1) AND fb.S_ValveOut2) AND fb.S_ValveOut3) AND fb.S_ValveOut4) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
121:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=32800; fb.S_ValveStatus2:=32800; fb.S_ValveStatus3:=32800; fb.S_ValveStatus4:=32800; fb.S_ValveStatus5:=32800; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 31)) AND fb.Ready) AND fb.S_ValveOut1) AND fb.S_ValveOut2) AND fb.S_ValveOut3) AND fb.S_ValveOut4) AND fb.S_ValveOut5) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
122:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=32800; fb.S_ValveStatus2:=32800; fb.S_ValveStatus3:=32800; fb.S_ValveStatus4:=32800; fb.S_ValveStatus5:=32800; fb.S_ValveStatus6:=32800; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 63)) AND fb.Ready) AND fb.S_ValveOut1) AND fb.S_ValveOut2) AND fb.S_ValveOut3) AND fb.S_ValveOut4) AND fb.S_ValveOut5) AND fb.S_ValveOut6) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
123:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=32800; fb.S_ValveStatus2:=32800; fb.S_ValveStatus3:=32800; fb.S_ValveStatus4:=32800; fb.S_ValveStatus5:=32800; fb.S_ValveStatus6:=32800; fb.S_ValveStatus7:=32800; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 127)) AND fb.Ready) AND fb.S_ValveOut1) AND fb.S_ValveOut2) AND fb.S_ValveOut3) AND fb.S_ValveOut4) AND fb.S_ValveOut5) AND fb.S_ValveOut6) AND fb.S_ValveOut7) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
124:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=32800; fb.S_ValveStatus2:=32800; fb.S_ValveStatus3:=32800; fb.S_ValveStatus4:=32800; fb.S_ValveStatus5:=32800; fb.S_ValveStatus6:=32800; fb.S_ValveStatus7:=32800; fb.S_ValveStatus8:=32800;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND fb.S_ValveOut1) AND fb.S_ValveOut2) AND fb.S_ValveOut3) AND fb.S_ValveOut4) AND fb.S_ValveOut5) AND fb.S_ValveOut6) AND fb.S_ValveOut7) AND fb.S_ValveOut8) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
125:
	fb.Activate := FALSE;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 0) AND (fb.AdditionalDiagCode = 0)) AND NOT (fb.Ready)) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
126:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32769) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
127:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
128:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=32800; fb.S_ValveStatus2:=32800; fb.S_ValveStatus3:=32800; fb.S_ValveStatus4:=32800; fb.S_ValveStatus5:=32800; fb.S_ValveStatus6:=32800; fb.S_ValveStatus7:=32800; fb.S_ValveStatus8:=32800;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 255)) AND fb.Ready) AND fb.S_ValveOut1) AND fb.S_ValveOut2) AND fb.S_ValveOut3) AND fb.S_ValveOut4) AND fb.S_ValveOut5) AND fb.S_ValveOut6) AND fb.S_ValveOut7) AND fb.S_ValveOut8) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
129:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=0; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32788) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
130:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33791; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32788) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
131:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=33793; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
132:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
133:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=0; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32804) AND (fb.AdditionalDiagCode = 2)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
134:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=33791; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32804) AND (fb.AdditionalDiagCode = 2)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
135:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=33793; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
136:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
137:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=0; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32820) AND (fb.AdditionalDiagCode = 4)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
138:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=33791; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32820) AND (fb.AdditionalDiagCode = 4)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
139:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=33793; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
140:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
141:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=0; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32836) AND (fb.AdditionalDiagCode = 8)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
142:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=33791; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32836) AND (fb.AdditionalDiagCode = 8)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
143:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=33793; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
144:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
145:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=0; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32852) AND (fb.AdditionalDiagCode = 16)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
146:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=33791; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32852) AND (fb.AdditionalDiagCode = 16)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
147:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=33793; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
148:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
149:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=0; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32868) AND (fb.AdditionalDiagCode = 32)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
150:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=33791; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32868) AND (fb.AdditionalDiagCode = 32)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
151:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=33793; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
152:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
153:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=0; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32884) AND (fb.AdditionalDiagCode = 64)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
154:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=33791; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32884) AND (fb.AdditionalDiagCode = 64)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
155:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=33793; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
156:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
157:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=0;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32900) AND (fb.AdditionalDiagCode = 128)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND NOT (fb.Error)));
	testState := testState + 1;
158:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=33791;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32900) AND (fb.AdditionalDiagCode = 128)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
159:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=33793;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
160:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
161:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=49216; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50192) AND (fb.AdditionalDiagCode = 1)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
162:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
163:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
164:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=49216; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50208) AND (fb.AdditionalDiagCode = 2)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
165:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
166:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
167:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=49216; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50224) AND (fb.AdditionalDiagCode = 4)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
168:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
169:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
170:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=49216; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50240) AND (fb.AdditionalDiagCode = 8)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
171:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
172:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
173:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=49216; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50256) AND (fb.AdditionalDiagCode = 16)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
174:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
175:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
176:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=49216; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50272) AND (fb.AdditionalDiagCode = 32)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
177:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
178:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
179:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=49216; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50288) AND (fb.AdditionalDiagCode = 64)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
180:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
181:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
182:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=49216;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 50304) AND (fb.AdditionalDiagCode = 128)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND NOT (fb.ValvesOK)) AND fb.Error));
	testState := testState + 1;
183:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32774) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
184:
	fb.Activate := TRUE; fb.UsedValves:=8; fb.S_ValveStatus1:=34820; fb.S_ValveStatus2:=34820; fb.S_ValveStatus3:=34820; fb.S_ValveStatus4:=34820; fb.S_ValveStatus5:=34820; fb.S_ValveStatus6:=34820; fb.S_ValveStatus7:=34820; fb.S_ValveStatus8:=34820;
	fb();
	failed := NOT ((((((((((((((fb.DiagCode = 32768) AND (fb.AdditionalDiagCode = 0)) AND fb.Ready) AND NOT (fb.S_ValveOut1)) AND NOT (fb.S_ValveOut2)) AND NOT (fb.S_ValveOut3)) AND NOT (fb.S_ValveOut4)) AND NOT (fb.S_ValveOut5)) AND NOT (fb.S_ValveOut6)) AND NOT (fb.S_ValveOut7)) AND NOT (fb.S_ValveOut8)) AND fb.ValvesOK) AND NOT (fb.Error)));
	testState := testState + 1;
185:
	fb.Activate := FALSE;
	fb();
	failed := NOT (((fb.DiagCode = 0) AND ((fb.AdditionalDiagCode = 0) AND (NOT (fb.Ready) AND (NOT (fb.S_ValveOut1) AND (NOT (fb.S_ValveOut2) AND (NOT (fb.S_ValveOut3) AND (NOT (fb.S_ValveOut4) AND (NOT (fb.S_ValveOut5) AND (NOT (fb.S_ValveOut6) AND (NOT (fb.S_ValveOut7) AND (NOT (fb.S_ValveOut8) AND (NOT (fb.ValvesOK) AND NOT (fb.Error))))))))))))));
	testState := testState + 1;
186:
	finished := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
