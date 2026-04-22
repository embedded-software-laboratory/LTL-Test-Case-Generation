FUNCTION_BLOCK SF_EnableSwitch2
VAR_INPUT
    Activate: BOOL;
    S_SafetyActive: SAFEBOOL;
    S_EnableIn: SAFEBOOL;
    S_AutoReset: SAFEBOOL;
    Reset: BOOL;
END_VAR
VAR_OUTPUT
    Ready: BOOL;
    S_EnableSwitchOut: SAFEBOOL;
    SafetyDemand: BOOL;
    ResetRequest: BOOL;
    Error: BOOL;
    DiagCode: WORD;
END_VAR
VAR
    Reset_Before: BOOL;
END_VAR


// state changes

IF NOT Activate THEN
    DiagCode := 16#0000;
ELSIF NOT S_SafetyActive THEN
    DiagCode := 16#8002;
ELSE

CASE DiagCode OF
16#0000:
    IF Activate THEN
        DiagCode := 16#8002;
    END_IF;
16#8002:
    IF (S_SafetyActive) THEN
        DiagCode := 16#8004;
    END_IF;
16#8004:
    IF S_EnableIn THEN
        DiagCode := 16#C010;
    ELSE
        DiagCode := 16#8802;
    END_IF;
16#8802:
    IF S_EnableIn THEN
        DiagCode := 16#8000;
    END_IF;
16#8000:
    IF NOT S_EnableIn THEN
        DiagCode := 16#8802;
    END_IF;

16#C010:
    IF Reset AND Reset_Before THEN
        DiagCode := 16#C011;
    ELSIF NOT S_EnableIn AND Reset AND NOT Reset_Before THEN
        DiagCode := 16#8802;
    ELSIF NOT S_EnableIn THEN
        DiagCode := 16#C410;
    END_IF;
16#C410:
    IF Reset AND Reset_Before THEN
        DiagCode := 16#C011;
    ELSIF NOT S_EnableIn AND Reset AND NOT Reset_Before THEN
        DiagCode := 16#8802;
    ELSIF S_EnableIn THEN
        DiagCode := 16#C010;
    END_IF;
16#C011:
    IF NOT Reset THEN
        IF S_EnableIn THEN
            DiagCode := 16#C010;
        ELSE
            DiagCode := 16#C410;
        END_IF;
    END_IF;
END_CASE;

END_IF;


// set output variables
CASE DiagCode OF
16#0000:
    Ready := FALSE;
    S_EnableSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8002:
    Ready := TRUE;
    S_EnableSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8004:
    Ready := TRUE;
    S_EnableSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8802:
    Ready := TRUE;
    S_EnableSwitchOut := FALSE;
    SafetyDemand := TRUE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8000:
    Ready := TRUE;
    S_EnableSwitchOut := TRUE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;

// errors
16#C011:
    Ready := TRUE;
    S_EnableSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := TRUE;
16#C010:
    Ready := TRUE;
    S_EnableSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := TRUE;
16#C410:
    Ready := TRUE;
    S_EnableSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := NOT Reset;
    Error := TRUE;
END_CASE;

Reset_Before := Reset;

END_FUNCTION_BLOCK