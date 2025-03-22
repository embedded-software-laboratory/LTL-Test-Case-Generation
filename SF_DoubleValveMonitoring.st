FUNCTION_BLOCK SF_DoubleValveMonitoring
VAR_INPUT
        Activate: BOOL;
        S_OutControl: SAFEBOOL;
        EDM1: BOOL;
        EDM2: BOOL;
        ValveType: BOOL;
        MonitoringTime: TIME := T#100ms;
        S_StartReset: SAFEBOOL;
        Reset: BOOL;
END_VAR
VAR_OUTPUT
        Ready: BOOL;
        S_SafeState: SAFEBOOL;
        S_ValveOut: SAFEBOOL;
        S_ValveStatus: SAFEWORD;
        SafetyDemand: BOOL;
        ResetRequest: BOOL;
        Error: BOOL;
        DiagCode: WORD;
END_VAR
VAR
        T_Init: TON;
        T_Monitoring: TON;
        EDM1_: BOOL;
        EDM2_: BOOL;
        Reset_Before: BOOL;
        S_OutControl_Before: SAFEBOOL;
END_VAR
VAR CONSTANT
    InitTime: TIME := T#500MS;
END_VAR


// state changes
IF NOT Activate THEN
    DiagCode := 16#0000;
ELSE
    T_Init(PT:=InitTime);
    T_Monitoring(PT:=MonitoringTime);
END_IF;

IF ValveType THEN
    EDM1_ := EDM1;
    EDM2_ := EDM2;
ELSE
    EDM1_ := NOT EDM1;
    EDM2_ := NOT EDM2;
END_IF

CASE DiagCode OF
16#0000:
    T_Init(IN:=0);
    T_Monitoring(IN:=0);
    IF Activate THEN
        T_Init(IN:=1, PT:=InitTime);
        DiagCode := 16#83FF;
    END_IF;
16#83FF:
    IF T_Init.Q THEN
        DiagCode := 16#8401;
    END_IF;
16#8401:
    IF Reset_Before AND Reset THEN
        DiagCode := 16#C001;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl_Before AND S_OutControl AND NOT S_StartReset THEN
        DiagCode := 16#C100;
    ELSIF NOT Reset_Before AND Reset OR S_StartReset THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    END_IF
16#C001:
    IF NOT Reset THEN   
        DiagCode := 16#8401;
    END_IF
16#C100:
    IF NOT Reset THEN
        DiagCode := 16#8401;
    END_IF
16#8802:
    IF S_OutControl AND NOT EDM1_ AND NOT EDM2_ THEN
        T_Monitoring(IN:=0);
        DiagCode := 16#C030;
    ELSIF S_OutControl AND EDM1_ AND NOT EDM2_ THEN
        T_Monitoring(IN:=0);
        DiagCode := 16#C020;
    ELSIF S_OutControl AND NOT EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);
        DiagCode := 16#C010;
    ELSIF T_Monitoring.Q AND NOT EDM1_ AND NOT EDM2_ THEN
        DiagCode := 16#C060;
    ELSIF T_Monitoring.Q AND EDM1_ AND NOT EDM2_ THEN
        DiagCode := 16#C050;
    ELSIF T_Monitoring.Q AND NOT EDM1_ AND EDM2_ THEN
        DiagCode := 16#C040;
    ELSIF EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);
        DiagCode := 16#8804;
    END_IF
16#8804:
    IF NOT EDM1_ AND NOT EDM2_ THEN
        DiagCode := 16#C060;
    ELSIF EDM1_ AND NOT EDM2_ THEN
        DiagCode := 16#C050;
    ELSIF NOT EDM1_ AND EDM2_ THEN
        DiagCode := 16#C040;
    ELSIF S_OutControl THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8020;
    END_IF
16#8020:
    IF T_Monitoring.Q AND EDM1_ AND EDM2_ THEN
        DiagCode := 16#C090;
    ELSIF T_Monitoring.Q AND NOT EDM1_ AND EDM2_ THEN
        DiagCode := 16#C080;
    ELSIF T_Monitoring.Q AND EDM1_ AND NOT EDM2_ THEN
        DiagCode := 16#C070;
    ELSIF NOT S_OutControl THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF NOT EDM1_ AND NOT EDM2_ THEN
        T_Monitoring(IN:=0);
        DiagCode := 16#8010;
    END_IF
16#8010:
    IF EDM1_ AND EDM2_ THEN
        DiagCode := 16#C090;
    ELSIF  NOT EDM1_ AND EDM2_ THEN
        DiagCode := 16#C080;
    ELSIF EDM1_ AND NOT EDM2_ THEN
        DiagCode := 16#C070;
    ELSIF NOT S_OutControl THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    END_IF
16#C010:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C020:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C030:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C040:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C050:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C060:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C070:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C080:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C090:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C011:
    IF NOT Reset THEN
        DiagCode := DiagCode - 1;
    END_IF
16#C021:
    IF NOT Reset THEN
        DiagCode := DiagCode - 1;
    END_IF
16#C031:
    IF NOT Reset THEN
        DiagCode := DiagCode - 1;
    END_IF
16#C041:
    IF NOT Reset THEN
        DiagCode := DiagCode - 1;
    END_IF
16#C051:
    IF NOT Reset THEN
        DiagCode := DiagCode - 1;
    END_IF
16#C061:
    IF NOT Reset THEN
        DiagCode := DiagCode - 1;
    END_IF
16#C071:
    IF NOT Reset THEN
        DiagCode := DiagCode - 1;
    END_IF
16#C081:
    IF NOT Reset THEN
        DiagCode := DiagCode - 1;
    END_IF
16#C091:
    IF NOT Reset THEN
        DiagCode := DiagCode - 1;
    END_IF
16#C410:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode - 16#400 + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF S_OutControl THEN
        DiagCode := DiagCode - 16#400;
    END_IF
16#C420:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode - 16#400 + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF S_OutControl THEN
        DiagCode := DiagCode - 16#400;
    END_IF
16#C430:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode - 16#400 + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF S_OutControl THEN
        DiagCode := DiagCode - 16#400;
    END_IF
16#C440:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode - 16#400 + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF S_OutControl THEN
        DiagCode := DiagCode - 16#400;
    END_IF
16#C450:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode - 16#400 + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF S_OutControl THEN
        DiagCode := DiagCode - 16#400;
    END_IF
16#C460:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode - 16#400 + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF S_OutControl THEN
        DiagCode := DiagCode - 16#400;
    END_IF
16#C470:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode - 16#400 + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF S_OutControl THEN
        DiagCode := DiagCode - 16#400;
    END_IF
16#C480:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode - 16#400 + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF S_OutControl THEN
        DiagCode := DiagCode - 16#400;
    END_IF
16#C490:
    IF Reset_Before AND Reset THEN
        DiagCode := DiagCode - 16#400 + 1;
    ELSIF NOT Reset_Before AND Reset AND NOT S_OutControl AND EDM1_ AND EDM2_ THEN
        T_Monitoring(IN:=0);T_Monitoring(IN:=1, PT:=MonitoringTime);
        DiagCode := 16#8802;
    ELSIF S_OutControl THEN
        DiagCode := DiagCode - 16#400;
    END_IF
END_CASE;
CASE DiagCode OF
16#C010:
    IF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C020:
    IF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C030:
    IF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C040:
    IF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C050:
    IF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C060:
    IF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C070:
    IF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C080:
    IF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
16#C090:
    IF NOT S_OutControl THEN
        DiagCode := DiagCode + 16#400;
    END_IF
END_CASE;

// set output variables
S_ValveStatus := DiagCode;

IF DiagCode > 16#C000 THEN
    Ready := TRUE;
    S_SafeState := FALSE;
    S_ValveOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := TRUE;
END_IF
IF DiagCode > 16#C400 THEN
    ResetRequest := TRUE;
END_IF

CASE DiagCode OF
16#0000:
    Ready := FALSE;
    S_SafeState := FALSE;
    S_ValveOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
16#83FF:
    Ready := TRUE;
    S_SafeState := FALSE;
    S_ValveOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8401:
    Ready := TRUE;
    S_SafeState := FALSE;
    S_ValveOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := TRUE;
    Error := FALSE;
16#8802:
    Ready := TRUE;
    S_SafeState := FALSE;
    S_ValveOut := FALSE;
    SafetyDemand := TRUE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8804:
    Ready := TRUE;
    S_SafeState := TRUE;
    S_ValveOut := FALSE;
    SafetyDemand := TRUE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8010:
    Ready := TRUE;
    S_SafeState := FALSE;
    S_ValveOut := TRUE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8020:
    Ready := TRUE;
    S_SafeState := FALSE;
    S_ValveOut := TRUE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
END_CASE;

Reset_Before := Reset;
S_OutControl_Before := S_OutControl;

END_FUNCTION_BLOCK