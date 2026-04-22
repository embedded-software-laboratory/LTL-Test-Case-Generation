FUNCTION_BLOCK SF_ValveGroupControl_Test
VAR_INPUT
END_VAR
VAR_OUTPUT
	failed_0: BOOL := FALSE;
	finished_0: BOOL := FALSE;
END_VAR
VAR
	fb_0: SF_ValveGroupControl_BranchCounters;
	waitCounter_0: UINT := 0;
	testState_0: UINT := 0;
END_VAR



IF NOT failed_0 AND NOT finished_0 THEN
CASE testState_0 OF
0:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
1:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
2:
	fb_0.Activate := TRUE; fb_0.UsedValves:=-1; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 49152) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
3:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 49152) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
4:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
5:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
6:
	fb_0.Activate := TRUE; fb_0.UsedValves:=9; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 49152) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
7:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
8:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
9:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
10:
	fb_0.Activate := TRUE; fb_0.UsedValves:=1; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
11:
	fb_0.Activate := TRUE; fb_0.UsedValves:=2; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 3)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
12:
	fb_0.Activate := TRUE; fb_0.UsedValves:=3; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 7)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
13:
	fb_0.Activate := TRUE; fb_0.UsedValves:=4; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 15)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
14:
	fb_0.Activate := TRUE; fb_0.UsedValves:=5; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 31)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
15:
	fb_0.Activate := TRUE; fb_0.UsedValves:=6; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 63)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
16:
	fb_0.Activate := TRUE; fb_0.UsedValves:=7; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 127)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
17:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
18:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50448) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
19:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50448) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
20:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
21:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
22:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
23:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50464) AND (fb_0.AdditionalDiagCode = 2)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
24:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50464) AND (fb_0.AdditionalDiagCode = 2)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
25:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
26:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
27:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
28:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50480) AND (fb_0.AdditionalDiagCode = 4)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
29:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50480) AND (fb_0.AdditionalDiagCode = 4)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
30:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
31:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
32:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
33:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50496) AND (fb_0.AdditionalDiagCode = 8)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
34:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50496) AND (fb_0.AdditionalDiagCode = 8)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
35:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
36:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
37:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
38:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50512) AND (fb_0.AdditionalDiagCode = 16)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
39:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50512) AND (fb_0.AdditionalDiagCode = 16)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
40:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
41:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
42:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
43:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50528) AND (fb_0.AdditionalDiagCode = 32)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
44:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50528) AND (fb_0.AdditionalDiagCode = 32)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
45:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
46:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
47:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
48:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50544) AND (fb_0.AdditionalDiagCode = 64)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
49:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50544) AND (fb_0.AdditionalDiagCode = 64)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
50:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
51:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
52:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
53:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50560) AND (fb_0.AdditionalDiagCode = 128)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
54:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50560) AND (fb_0.AdditionalDiagCode = 128)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
55:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
56:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
57:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
58:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33791; fb_0.S_ValveStatus2:=33791; fb_0.S_ValveStatus3:=33791; fb_0.S_ValveStatus4:=33791; fb_0.S_ValveStatus5:=33791; fb_0.S_ValveStatus6:=33791; fb_0.S_ValveStatus7:=33791; fb_0.S_ValveStatus8:=33791;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
59:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33791; fb_0.S_ValveStatus2:=33791; fb_0.S_ValveStatus3:=33791; fb_0.S_ValveStatus4:=33791; fb_0.S_ValveStatus5:=33791; fb_0.S_ValveStatus6:=33791; fb_0.S_ValveStatus7:=33791; fb_0.S_ValveStatus8:=33793;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 127)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
60:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33791; fb_0.S_ValveStatus2:=33791; fb_0.S_ValveStatus3:=33791; fb_0.S_ValveStatus4:=33791; fb_0.S_ValveStatus5:=33791; fb_0.S_ValveStatus6:=33791; fb_0.S_ValveStatus7:=33793; fb_0.S_ValveStatus8:=33793;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 63)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
61:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33791; fb_0.S_ValveStatus2:=33791; fb_0.S_ValveStatus3:=33791; fb_0.S_ValveStatus4:=33791; fb_0.S_ValveStatus5:=33791; fb_0.S_ValveStatus6:=33793; fb_0.S_ValveStatus7:=33793; fb_0.S_ValveStatus8:=33793;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 31)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
62:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33791; fb_0.S_ValveStatus2:=33791; fb_0.S_ValveStatus3:=33791; fb_0.S_ValveStatus4:=33791; fb_0.S_ValveStatus5:=33793; fb_0.S_ValveStatus6:=33793; fb_0.S_ValveStatus7:=33793; fb_0.S_ValveStatus8:=33793;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 15)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
63:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33791; fb_0.S_ValveStatus2:=33791; fb_0.S_ValveStatus3:=33791; fb_0.S_ValveStatus4:=33793; fb_0.S_ValveStatus5:=33793; fb_0.S_ValveStatus6:=33793; fb_0.S_ValveStatus7:=33793; fb_0.S_ValveStatus8:=33793;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 7)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
64:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33791; fb_0.S_ValveStatus2:=33791; fb_0.S_ValveStatus3:=33793; fb_0.S_ValveStatus4:=33793; fb_0.S_ValveStatus5:=33793; fb_0.S_ValveStatus6:=33793; fb_0.S_ValveStatus7:=33793; fb_0.S_ValveStatus8:=33793;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 3)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
65:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33791; fb_0.S_ValveStatus2:=33793; fb_0.S_ValveStatus3:=33793; fb_0.S_ValveStatus4:=33793; fb_0.S_ValveStatus5:=33793; fb_0.S_ValveStatus6:=33793; fb_0.S_ValveStatus7:=33793; fb_0.S_ValveStatus8:=33793;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
66:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33793; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=33793; fb_0.S_ValveStatus4:=33793; fb_0.S_ValveStatus5:=33793; fb_0.S_ValveStatus6:=33793; fb_0.S_ValveStatus7:=33793; fb_0.S_ValveStatus8:=33793;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32770) AND (fb_0.AdditionalDiagCode = 2)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
67:
	fb_0.Activate := TRUE; fb_0.UsedValves:=0; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
68:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=49216; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50192) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
69:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=49216; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50192) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
70:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
71:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=49216; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50208) AND (fb_0.AdditionalDiagCode = 2)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
72:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=49216; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50208) AND (fb_0.AdditionalDiagCode = 2)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
73:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
74:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=49216; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50224) AND (fb_0.AdditionalDiagCode = 4)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
75:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=49216; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50224) AND (fb_0.AdditionalDiagCode = 4)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
76:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
77:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=49216; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50240) AND (fb_0.AdditionalDiagCode = 8)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
78:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=49216; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50240) AND (fb_0.AdditionalDiagCode = 8)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
79:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
80:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=49216; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50256) AND (fb_0.AdditionalDiagCode = 16)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
81:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=49216; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50256) AND (fb_0.AdditionalDiagCode = 16)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
82:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
83:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=49216; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50272) AND (fb_0.AdditionalDiagCode = 32)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
84:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=49216; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50272) AND (fb_0.AdditionalDiagCode = 32)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
85:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
86:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=49216; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50288) AND (fb_0.AdditionalDiagCode = 64)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
87:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=49216; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50288) AND (fb_0.AdditionalDiagCode = 64)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
88:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
89:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=49216;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50304) AND (fb_0.AdditionalDiagCode = 128)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
90:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=49216;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50304) AND (fb_0.AdditionalDiagCode = 128)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
91:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
92:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32788) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
93:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33791; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32788) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
94:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33793; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
95:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32804) AND (fb_0.AdditionalDiagCode = 2)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
96:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=33791; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32804) AND (fb_0.AdditionalDiagCode = 2)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
97:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=33793; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
98:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32820) AND (fb_0.AdditionalDiagCode = 4)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
99:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=33791; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32820) AND (fb_0.AdditionalDiagCode = 4)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
100:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=33793; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
101:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32836) AND (fb_0.AdditionalDiagCode = 8)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
102:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=33791; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32836) AND (fb_0.AdditionalDiagCode = 8)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
103:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=33793; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
104:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32852) AND (fb_0.AdditionalDiagCode = 16)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
105:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=33791; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32852) AND (fb_0.AdditionalDiagCode = 16)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
106:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=33793; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
107:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32868) AND (fb_0.AdditionalDiagCode = 32)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
108:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=33791; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32868) AND (fb_0.AdditionalDiagCode = 32)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
109:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=33793; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
110:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32884) AND (fb_0.AdditionalDiagCode = 64)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
111:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=33791; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32884) AND (fb_0.AdditionalDiagCode = 64)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
112:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=33793; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
113:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32900) AND (fb_0.AdditionalDiagCode = 128)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
114:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=33791;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32900) AND (fb_0.AdditionalDiagCode = 128)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
115:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=33793;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
116:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
117:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=32800; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND fb_0.S_ValveOut1) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
118:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=32800; fb_0.S_ValveStatus2:=32800; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 3)) AND fb_0.Ready) AND fb_0.S_ValveOut1) AND fb_0.S_ValveOut2) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
119:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=32800; fb_0.S_ValveStatus2:=32800; fb_0.S_ValveStatus3:=32800; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 7)) AND fb_0.Ready) AND fb_0.S_ValveOut1) AND fb_0.S_ValveOut2) AND fb_0.S_ValveOut3) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
120:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=32800; fb_0.S_ValveStatus2:=32800; fb_0.S_ValveStatus3:=32800; fb_0.S_ValveStatus4:=32800; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 15)) AND fb_0.Ready) AND fb_0.S_ValveOut1) AND fb_0.S_ValveOut2) AND fb_0.S_ValveOut3) AND fb_0.S_ValveOut4) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
121:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=32800; fb_0.S_ValveStatus2:=32800; fb_0.S_ValveStatus3:=32800; fb_0.S_ValveStatus4:=32800; fb_0.S_ValveStatus5:=32800; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 31)) AND fb_0.Ready) AND fb_0.S_ValveOut1) AND fb_0.S_ValveOut2) AND fb_0.S_ValveOut3) AND fb_0.S_ValveOut4) AND fb_0.S_ValveOut5) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
122:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=32800; fb_0.S_ValveStatus2:=32800; fb_0.S_ValveStatus3:=32800; fb_0.S_ValveStatus4:=32800; fb_0.S_ValveStatus5:=32800; fb_0.S_ValveStatus6:=32800; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 63)) AND fb_0.Ready) AND fb_0.S_ValveOut1) AND fb_0.S_ValveOut2) AND fb_0.S_ValveOut3) AND fb_0.S_ValveOut4) AND fb_0.S_ValveOut5) AND fb_0.S_ValveOut6) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
123:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=32800; fb_0.S_ValveStatus2:=32800; fb_0.S_ValveStatus3:=32800; fb_0.S_ValveStatus4:=32800; fb_0.S_ValveStatus5:=32800; fb_0.S_ValveStatus6:=32800; fb_0.S_ValveStatus7:=32800; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 127)) AND fb_0.Ready) AND fb_0.S_ValveOut1) AND fb_0.S_ValveOut2) AND fb_0.S_ValveOut3) AND fb_0.S_ValveOut4) AND fb_0.S_ValveOut5) AND fb_0.S_ValveOut6) AND fb_0.S_ValveOut7) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
124:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=32800; fb_0.S_ValveStatus2:=32800; fb_0.S_ValveStatus3:=32800; fb_0.S_ValveStatus4:=32800; fb_0.S_ValveStatus5:=32800; fb_0.S_ValveStatus6:=32800; fb_0.S_ValveStatus7:=32800; fb_0.S_ValveStatus8:=32800;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND fb_0.S_ValveOut1) AND fb_0.S_ValveOut2) AND fb_0.S_ValveOut3) AND fb_0.S_ValveOut4) AND fb_0.S_ValveOut5) AND fb_0.S_ValveOut6) AND fb_0.S_ValveOut7) AND fb_0.S_ValveOut8) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
125:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 0) AND (fb_0.AdditionalDiagCode = 0)) AND NOT (fb_0.Ready)) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
126:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32769) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
127:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
128:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=32800; fb_0.S_ValveStatus2:=32800; fb_0.S_ValveStatus3:=32800; fb_0.S_ValveStatus4:=32800; fb_0.S_ValveStatus5:=32800; fb_0.S_ValveStatus6:=32800; fb_0.S_ValveStatus7:=32800; fb_0.S_ValveStatus8:=32800;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 255)) AND fb_0.Ready) AND fb_0.S_ValveOut1) AND fb_0.S_ValveOut2) AND fb_0.S_ValveOut3) AND fb_0.S_ValveOut4) AND fb_0.S_ValveOut5) AND fb_0.S_ValveOut6) AND fb_0.S_ValveOut7) AND fb_0.S_ValveOut8) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
129:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=0; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32788) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
130:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33791; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32788) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
131:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=33793; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
132:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
133:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=0; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32804) AND (fb_0.AdditionalDiagCode = 2)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
134:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=33791; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32804) AND (fb_0.AdditionalDiagCode = 2)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
135:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=33793; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
136:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
137:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=0; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32820) AND (fb_0.AdditionalDiagCode = 4)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
138:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=33791; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32820) AND (fb_0.AdditionalDiagCode = 4)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
139:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=33793; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
140:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
141:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=0; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32836) AND (fb_0.AdditionalDiagCode = 8)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
142:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=33791; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32836) AND (fb_0.AdditionalDiagCode = 8)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
143:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=33793; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
144:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
145:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=0; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32852) AND (fb_0.AdditionalDiagCode = 16)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
146:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=33791; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32852) AND (fb_0.AdditionalDiagCode = 16)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
147:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=33793; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
148:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
149:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=0; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32868) AND (fb_0.AdditionalDiagCode = 32)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
150:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=33791; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32868) AND (fb_0.AdditionalDiagCode = 32)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
151:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=33793; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
152:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
153:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=0; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32884) AND (fb_0.AdditionalDiagCode = 64)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
154:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=33791; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32884) AND (fb_0.AdditionalDiagCode = 64)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
155:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=33793; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
156:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
157:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=0;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32900) AND (fb_0.AdditionalDiagCode = 128)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
158:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=33791;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32900) AND (fb_0.AdditionalDiagCode = 128)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
159:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=33793;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
160:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
161:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=49216; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50192) AND (fb_0.AdditionalDiagCode = 1)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
162:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
163:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
164:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=49216; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50208) AND (fb_0.AdditionalDiagCode = 2)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
165:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
166:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
167:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=49216; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50224) AND (fb_0.AdditionalDiagCode = 4)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
168:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
169:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
170:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=49216; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50240) AND (fb_0.AdditionalDiagCode = 8)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
171:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
172:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
173:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=49216; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50256) AND (fb_0.AdditionalDiagCode = 16)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
174:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
175:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
176:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=49216; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50272) AND (fb_0.AdditionalDiagCode = 32)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
177:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
178:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
179:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=49216; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50288) AND (fb_0.AdditionalDiagCode = 64)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
180:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
181:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
182:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=49216;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 50304) AND (fb_0.AdditionalDiagCode = 128)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND NOT (fb_0.ValvesOK)) AND fb_0.Error));
	testState_0 := testState_0 + 1;
183:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32774) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
184:
	fb_0.Activate := TRUE; fb_0.UsedValves:=8; fb_0.S_ValveStatus1:=34820; fb_0.S_ValveStatus2:=34820; fb_0.S_ValveStatus3:=34820; fb_0.S_ValveStatus4:=34820; fb_0.S_ValveStatus5:=34820; fb_0.S_ValveStatus6:=34820; fb_0.S_ValveStatus7:=34820; fb_0.S_ValveStatus8:=34820;
	fb_0();
	failed_0 := NOT ((((((((((((((fb_0.DiagCode = 32768) AND (fb_0.AdditionalDiagCode = 0)) AND fb_0.Ready) AND NOT (fb_0.S_ValveOut1)) AND NOT (fb_0.S_ValveOut2)) AND NOT (fb_0.S_ValveOut3)) AND NOT (fb_0.S_ValveOut4)) AND NOT (fb_0.S_ValveOut5)) AND NOT (fb_0.S_ValveOut6)) AND NOT (fb_0.S_ValveOut7)) AND NOT (fb_0.S_ValveOut8)) AND fb_0.ValvesOK) AND NOT (fb_0.Error)));
	testState_0 := testState_0 + 1;
185:
	fb_0.Activate := FALSE;
	fb_0();
	failed_0 := NOT (((fb_0.DiagCode = 0) AND ((fb_0.AdditionalDiagCode = 0) AND (NOT (fb_0.Ready) AND (NOT (fb_0.S_ValveOut1) AND (NOT (fb_0.S_ValveOut2) AND (NOT (fb_0.S_ValveOut3) AND (NOT (fb_0.S_ValveOut4) AND (NOT (fb_0.S_ValveOut5) AND (NOT (fb_0.S_ValveOut6) AND (NOT (fb_0.S_ValveOut7) AND (NOT (fb_0.S_ValveOut8) AND (NOT (fb_0.ValvesOK) AND NOT (fb_0.Error))))))))))))));
	testState_0 := testState_0 + 1;
186:
	finished_0 := TRUE;
END_CASE
END_IF

END_FUNCTION_BLOCK
