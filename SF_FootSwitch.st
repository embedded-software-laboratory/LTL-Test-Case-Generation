FUNCTION_BLOCK SF_FootSwitch
VAR_INPUT
    Activate: BOOL;
    S_SafetyActive: SAFEBOOL;
    S_FootSwitchCh1: SAFEBOOL;
    S_FootSwitchCh2: SAFEBOOL;
    S_AutoReset: SAFEBOOL;
    Reset: BOOL;
END_VAR
VAR_OUTPUT
    Ready: BOOL;
    S_FootSwitchOut: SAFEBOOL;
    SafetyDemand: BOOL;
    ResetRequest: BOOL;
    Error: BOOL;
    DiagCode: WORD;
END_VAR
VAR
    Reset_Before: BOOL;
    Position1: SAFEBOOL;
    Position2: SAFEBOOL;
    Position3: SAFEBOOL;
END_VAR


// state changes

IF NOT Activate THEN
    DiagCode := 16#0000;
ELSIF NOT S_SafetyActive THEN
    DiagCode := 16#8004;
ELSE

Position1 := NOT S_FootSwitchCh1 AND S_FootSwitchCh2;
Position2 := S_FootSwitchCh1 AND S_FootSwitchCh2;
Position3 := (NOT (S_FootSwitchCh1 OR S_FootSwitchCh2)) OR (S_FootSwitchCh1 AND NOT S_FootSwitchCh2);

CASE DiagCode OF
16#0000:
    IF Activate THEN
        DiagCode := 16#8004;
    END_IF;
16#8004:
    IF (S_SafetyActive) THEN
        DiagCode := 16#8005;
    END_IF;
16#8005:
    IF (NOT Position1) THEN
        DiagCode := 16#C120;
    ELSE
        DiagCode := 16#8006;
    END_IF;
16#8006:
    IF Position2 THEN
        DiagCode := 16#8000;
    ELSIF Position3 THEN
        DiagCode := 16#8810;
    END_IF;
16#8000:
    IF Position3 THEN
        DiagCode := 16#8810;
    ELSIF Position1 THEN
        DiagCode := 16#8006;
    END_IF;
16#8810:
    IF Position2 THEN
        DiagCode := 16#C160;
    ELSIF Position1 THEN
        DiagCode := 16#8006;
    END_IF;
16#C120:
    IF Position1 THEN
        DiagCode := 16#C140;
    END_IF;
16#C140:
    IF NOT Position1 THEN
        DiagCode := 16#C120;
    ELSIF Reset AND Reset_Before AND NOT S_AutoReset THEN
        DiagCode := 16#C141;
    ELSIF (Reset AND NOT Reset_Before) OR S_AutoReset THEN
        DiagCode := 16#8006;
    END_IF;
16#C141:
    IF NOT Reset THEN
        DiagCode := 16#C140;
    END_IF;
16#C160:
    IF NOT Position2 THEN
        DiagCode := 16#C180;
    END_IF;
16#C180:
    IF Position2 THEN
        DiagCode := 16#C160;
    ELSIF Reset AND Reset_Before AND NOT S_AutoReset THEN
        DiagCode := 16#C181;
    ELSIF (Reset AND NOT Reset_Before) OR S_AutoReset THEN
        DiagCode := 16#8810;
    END_IF;
16#C181:
    IF NOT Reset THEN
        DiagCode := 16#C180;
    END_IF;    
END_CASE;

END_IF;


// set output variables
CASE DiagCode OF
16#0000:
    Ready := FALSE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8004:
    Ready := TRUE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8005:
    Ready := TRUE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8006:
    Ready := TRUE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := TRUE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8810:
    Ready := TRUE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := TRUE;
    ResetRequest := FALSE;
    Error := FALSE;
16#8000:
    Ready := TRUE;
    S_FootSwitchOut := TRUE;
    SafetyDemand := TRUE;
    ResetRequest := FALSE;
    Error := FALSE;

// errors
16#C141:
    Ready := TRUE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := TRUE;
16#C181:
    Ready := TRUE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := TRUE;
16#C120:
    Ready := TRUE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := TRUE;
16#C140:
    Ready := TRUE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := TRUE;
16#C160:
    Ready := TRUE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := TRUE;
16#C180:
    Ready := TRUE;
    S_FootSwitchOut := FALSE;
    SafetyDemand := FALSE;
    ResetRequest := FALSE;
    Error := TRUE;
END_CASE;

Reset_Before := Reset;

END_FUNCTION_BLOCK