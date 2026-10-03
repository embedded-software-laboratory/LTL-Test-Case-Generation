FUNCTION_BLOCK SF_ModeSelector
VAR_INPUT
    Activate: BOOL;
    S_Mode0: BOOL;
    S_Mode1: BOOL;
    S_Mode2: BOOL;
    S_Mode3: BOOL;
    S_Mode4: BOOL;
    S_Mode5: BOOL;
    S_Mode6: BOOL;
    S_Mode7: BOOL;
    AutoSetMode: BOOL;
    S_SetMode: BOOL;
    S_Unlock: BOOL;
    Reset: BOOL;
    ModeMonitorTime: TIME := T#100MS;
END_VAR
VAR_OUTPUT
    Ready: BOOL;
    S_Mode0Sel: BOOL;
    S_Mode1Sel: BOOL;
    S_Mode2Sel: BOOL;
    S_Mode3Sel: BOOL;
    S_Mode4Sel: BOOL;
    S_Mode5Sel: BOOL;
    S_Mode6Sel: BOOL;
    S_Mode7Sel: BOOL;
    S_AnyModeSel: BOOL;
    SafetyDemand: BOOL;
    ResetRequest: BOOL;
    Error: BOOL;
    DiagCode: UINT;
END_VAR
VAR
    T_1: TON;
    Reset_Before: BOOL;
    S_SetMode_Before: BOOL;
END_VAR

VAR_TEMP
    ModeSum: USINT;
    ModeChanged: BOOL;
    Error1: BOOL;
    Error2: BOOL;
END_VAR


BEGIN

IF NOT Activate THEN
    DiagCode := 16#0000;

    Ready := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
    S_AnyModeSel := FALSE;
    S_Mode0Sel := FALSE;
    S_Mode1Sel := FALSE;
    S_Mode2Sel := FALSE;
    S_Mode3Sel := FALSE;
    S_Mode4Sel := FALSE;
    S_Mode5Sel := FALSE;
    S_Mode6Sel := FALSE;
    S_Mode7Sel := FALSE;

    T_1(IN := 0);
    Reset_Before := FALSE;
    S_SetMode_Before := FALSE;

    ModeSum := 0;
    ModeChanged := FALSE;
    Error1 := FALSE;
    Error2 := FALSE;
ELSE
    T_1(PT := ModeMonitorTime);

    ModeSum := 0;
    IF S_Mode0 THEN
        ModeSum := ModeSum+1;
    END_IF;
    IF S_Mode1 THEN
        ModeSum := ModeSum+1;
    END_IF;
    IF S_Mode2 THEN
        ModeSum := ModeSum+1;
    END_IF;
    IF S_Mode3 THEN
        ModeSum := ModeSum+1;
    END_IF;
    IF S_Mode4 THEN
        ModeSum := ModeSum+1;
    END_IF;
    IF S_Mode5 THEN
        ModeSum := ModeSum+1;
    END_IF;
    IF S_Mode6 THEN
        ModeSum := ModeSum+1;
    END_IF;
    IF S_Mode7 THEN
        ModeSum := ModeSum+1;
    END_IF;

    IF S_Mode0 <> S_Mode0Sel THEN
        ModeChanged := TRUE;
    ELSIF S_Mode1 <> S_Mode1Sel THEN
        ModeChanged := TRUE;
    ELSIF S_Mode2 <> S_Mode2Sel THEN
        ModeChanged := TRUE;
    ELSIF S_Mode3 <> S_Mode3Sel THEN
        ModeChanged := TRUE;
    ELSIF S_Mode4 <> S_Mode4Sel THEN
        ModeChanged := TRUE;
    ELSIF S_Mode5 <> S_Mode5Sel THEN
        ModeChanged := TRUE;
    ELSIF S_Mode6 <> S_Mode6Sel THEN
        ModeChanged := TRUE;
    ELSIF S_Mode7 <> S_Mode7Sel THEN
        ModeChanged := TRUE;
    ELSE
        ModeChanged := FALSE;
    END_IF;

    IF ModeSum > 1 THEN
        Error1 := true;
    ELSE
        Error1 := false;
    END_IF;

    // state changes
    CASE DiagCode OF
    16#0000:
        DiagCode := 16#8802;
        T_1(IN := 0);
        T_1(IN := 1, PT := ModeMonitorTime);
    16#8802:
        IF Error1 THEN
            T_1(IN := 0);
            DiagCode := 16#C010;
        ELSIF T_1.Q THEN
            DiagCode := 16#C020;
        ELSIF (AutoSetMode OR (NOT S_SetMode_Before AND S_SetMode)) AND S_Unlock AND (ModeSum = 1) THEN
            T_1(IN := 0);
            DiagCode := 16#8000;
            S_Mode0Sel := S_Mode0;
            S_Mode1Sel := S_Mode1;
            S_Mode2Sel := S_Mode2;
            S_Mode3Sel := S_Mode3;
            S_Mode4Sel := S_Mode4;
            S_Mode5Sel := S_Mode5;
            S_Mode6Sel := S_Mode6;
            S_Mode7Sel := S_Mode7;
        END_IF;
    16#8000:
        IF Error1 THEN
            DiagCode := 16#C010;
        ELSIF ModeChanged THEN
            DiagCode := 16#8802;
            T_1(IN := 0);
            T_1(IN := 1, PT := ModeMonitorTime);
        ELSIF NOT S_Unlock THEN
            DiagCode := 16#8010;
        END_IF;
    16#8010:
        IF S_Unlock THEN
            IF Error1 THEN
                DiagCode := 16#C010;
            ELSIF ModeChanged THEN
                DiagCode := 16#8802;
                T_1(IN := 0);
                T_1(IN := 1, PT := ModeMonitorTime);
            ELSE
                DiagCode := 16#8000;
            END_IF;
        END_IF;
    16#C010:
        IF Reset_Before AND Reset THEN
            DiagCode := 16#C011;
        ELSIF (ModeSum = 0) OR (ModeSum = 1) THEN
            IF NOT Reset_Before AND Reset THEN
                DiagCode := 16#8802;
                T_1(IN := 0);
                T_1(IN := 1, PT := ModeMonitorTime);
            ELSE
                DiagCode := 16#C410;
            END_IF;
        END_IF;
    16#C410:
        IF Reset_Before AND Reset THEN
            DiagCode := 16#C011;
        ELSIF (ModeSum = 0) OR (ModeSum = 1) THEN
            IF NOT Reset_Before AND Reset THEN
                DiagCode := 16#8802;
                T_1(IN := 0);
                T_1(IN := 1, PT := ModeMonitorTime);
            END_IF;
        ELSE
            DiagCode := 16#C010;
        END_IF;
    16#C020:
        IF Reset_Before AND Reset THEN
            DiagCode := 16#C021;
        ELSIF (ModeSum = 1) THEN
            IF NOT Reset_Before AND Reset THEN
                DiagCode := 16#8802;
                T_1(IN := 0);
                T_1(IN := 1, PT := ModeMonitorTime);
            ELSE
                DiagCode := 16#C420;
            END_IF;
        END_IF;
    16#C420:
        IF Reset_Before AND Reset THEN
            DiagCode := 16#C021;
        ELSIF (ModeSum = 1) THEN
            IF NOT Reset_Before AND Reset THEN
                DiagCode := 16#8802;
                T_1(IN := 0);
                T_1(IN := 1, PT := ModeMonitorTime);
            END_IF;
        ELSE
            DiagCode := 16#C020;
        END_IF;
    16#C011:
        IF (NOT Reset) THEN
            DiagCode := 16#C010;
        END_IF;
    16#C021:
        IF (NOT Reset) THEN
            DiagCode := 16#C020;
        END_IF;
    END_CASE;


    // set output variables
    CASE DiagCode OF
    16#8802:
        Ready := TRUE;
        SafetyDemand := TRUE;
        ResetRequest := FALSE;
        Error := FALSE;
        S_AnyModeSel := FALSE;
        S_Mode0Sel := FALSE;
        S_Mode1Sel := FALSE;
        S_Mode2Sel := FALSE;
        S_Mode3Sel := FALSE;
        S_Mode4Sel := FALSE;
        S_Mode5Sel := FALSE;
        S_Mode6Sel := FALSE;
        S_Mode7Sel := FALSE;
    16#8000:
        Ready := TRUE;
        SafetyDemand := FALSE;
        ResetRequest := FALSE;
        Error := FALSE;
        S_AnyModeSel := TRUE;
    16#8010:
        Ready := TRUE;
        SafetyDemand := FALSE;
        ResetRequest := FALSE;
        Error := FALSE;
        S_AnyModeSel := TRUE;
    16#C010:
        Ready := TRUE;
        SafetyDemand := FALSE;
        ResetRequest := FALSE;
        Error := TRUE;
        S_AnyModeSel := FALSE;
        S_Mode0Sel := FALSE;
        S_Mode1Sel := FALSE;
        S_Mode2Sel := FALSE;
        S_Mode3Sel := FALSE;
        S_Mode4Sel := FALSE;
        S_Mode5Sel := FALSE;
        S_Mode6Sel := FALSE;
        S_Mode7Sel := FALSE;
    16#C410:
        Ready := TRUE;
        SafetyDemand := FALSE;
        ResetRequest := NOT Reset;
        Error := TRUE;
        S_AnyModeSel := FALSE;
        S_Mode0Sel := FALSE;
        S_Mode1Sel := FALSE;
        S_Mode2Sel := FALSE;
        S_Mode3Sel := FALSE;
        S_Mode4Sel := FALSE;
        S_Mode5Sel := FALSE;
        S_Mode6Sel := FALSE;
        S_Mode7Sel := FALSE;
    16#C020:
        Ready := TRUE;
        SafetyDemand := FALSE;
        ResetRequest := FALSE;
        Error := TRUE;
        S_AnyModeSel := FALSE;
        S_Mode0Sel := FALSE;
        S_Mode1Sel := FALSE;
        S_Mode2Sel := FALSE;
        S_Mode3Sel := FALSE;
        S_Mode4Sel := FALSE;
        S_Mode5Sel := FALSE;
        S_Mode6Sel := FALSE;
        S_Mode7Sel := FALSE;
    16#C420:
        Ready := TRUE;
        SafetyDemand := FALSE;
        ResetRequest := NOT Reset;
        Error := TRUE;
        S_AnyModeSel := FALSE;
        S_Mode0Sel := FALSE;
        S_Mode1Sel := FALSE;
        S_Mode2Sel := FALSE;
        S_Mode3Sel := FALSE;
        S_Mode4Sel := FALSE;
        S_Mode5Sel := FALSE;
        S_Mode6Sel := FALSE;
        S_Mode7Sel := FALSE;
    16#C011:
        Ready := TRUE;
        SafetyDemand := FALSE;
        ResetRequest := FALSE;
        Error := TRUE;
        S_AnyModeSel := FALSE;
        S_Mode0Sel := FALSE;
        S_Mode1Sel := FALSE;
        S_Mode2Sel := FALSE;
        S_Mode3Sel := FALSE;
        S_Mode4Sel := FALSE;
        S_Mode5Sel := FALSE;
        S_Mode6Sel := FALSE;
        S_Mode7Sel := FALSE;
    16#C021:
        Ready := TRUE;
        SafetyDemand := FALSE;
        ResetRequest := FALSE;
        Error := TRUE;
        S_AnyModeSel := FALSE;
        S_Mode0Sel := FALSE;
        S_Mode1Sel := FALSE;
        S_Mode2Sel := FALSE;
        S_Mode3Sel := FALSE;
        S_Mode4Sel := FALSE;
        S_Mode5Sel := FALSE;
        S_Mode6Sel := FALSE;
        S_Mode7Sel := FALSE;
    END_CASE;

    Reset_Before := Reset;
    S_SetMode_Before := S_SetMode;
END_IF;

END_FUNCTION_BLOCK
