FUNCTION_BLOCK SF_Equivalent
VAR_INPUT
        Activate: BOOL;
        S_ChannelA: SAFEBOOL;
        S_ChannelB: SAFEBOOL;
        DiscrepancyTime: TIME := T#100ms;
END_VAR
VAR_OUTPUT
        Ready: BOOL;
        S_EquivalentOut: SAFEBOOL;
        SafetyDemand: BOOL;
        Error: BOOL;
        DiagCode: WORD;
END_VAR
VAR
        T_1: TON;
END_VAR

// state changes
IF NOT Activate THEN
    DiagCode := 16#0000;
ELSE
    T_1(PT := DiscrepancyTime);
END_IF;

CASE DiagCode OF
16#0000:
    IF Activate THEN
        DiagCode := 16#8801;
    END_IF;
16#8000:
    IF S_ChannelA XOR S_ChannelB THEN
        DiagCode := 16#8806;
        T_1(IN := 0);
        T_1(IN := 1, PT := DiscrepancyTime);
    ELSIF NOT S_ChannelA AND NOT S_ChannelB THEN
        DiagCode := 16#8801;
    END_IF;
16#8801:
    IF S_ChannelA AND NOT S_ChannelB THEN
        DiagCode := 16#8802;
        T_1(IN := 0);
        T_1(IN := 1, PT := DiscrepancyTime);
    ELSIF S_ChannelB AND NOT S_ChannelA THEN
        DiagCode := 16#8804;
        T_1(IN := 0);
        T_1(IN := 1, PT := DiscrepancyTime);
    ELSIF S_ChannelA AND S_ChannelB THEN
        DiagCode := 16#8000;
    END_IF;
16#8802:
    IF T_1.Q THEN
        DiagCode := 16#C010;
    ELSIF NOT S_ChannelA THEN
        DiagCode := 16#8801;
    ELSIF S_ChannelB THEN
        DiagCode := 16#8000;
    END_IF;
16#8804:
    IF T_1.Q THEN
        DiagCode := 16#C020;
    ELSIF NOT S_ChannelB THEN
        DiagCode := 16#8801;
    ELSIF S_ChannelA THEN
        DiagCode := 16#8000;
    END_IF;
16#8806:
    IF T_1.Q THEN
        DiagCode := 16#C030;
    ELSIF NOT S_ChannelA AND NOT S_ChannelB THEN
        DiagCode := 16#8801;
    END_IF;
16#C010:
    IF NOT S_ChannelA AND NOT S_ChannelB THEN
        DiagCode := 16#8801;
    END_IF;
16#C020:
    IF NOT S_ChannelA AND NOT S_ChannelB THEN
        DiagCode := 16#8801;
    END_IF;
16#C030:
    IF NOT S_ChannelA AND NOT S_ChannelB THEN
        DiagCode := 16#8801;
    END_IF;
END_CASE;

// set output variables
CASE DiagCode OF
16#0000:
    Ready := FALSE;
    SafetyDemand := FALSE;
    Error := FALSE;
    S_EquivalentOut := FALSE;
16#8000:
    Ready := TRUE;
    SafetyDemand := FALSE;
    Error := FALSE;
    S_EquivalentOut := TRUE;
16#8801:
    Ready := TRUE;
    SafetyDemand := TRUE;
    Error := FALSE;
    S_EquivalentOut := FALSE;
16#8802:
    Ready := TRUE;
    SafetyDemand := TRUE;
    Error := FALSE;
    S_EquivalentOut := FALSE;
16#8804:
    Ready := TRUE;
    SafetyDemand := TRUE;
    Error := FALSE;
    S_EquivalentOut := FALSE;
16#8806:
    Ready := TRUE;
    SafetyDemand := TRUE;
    Error := FALSE;
    S_EquivalentOut := FALSE;
16#C010:
    Ready := TRUE;
    SafetyDemand := FALSE;
    Error := TRUE;
    S_EquivalentOut := FALSE;
16#C020:
    Ready := TRUE;
    SafetyDemand := FALSE;
    Error := TRUE;
    S_EquivalentOut := FALSE;
16#C030:
    Ready := TRUE;
    SafetyDemand := FALSE;
    Error := TRUE;
    S_EquivalentOut := FALSE;
END_CASE;

END_FUNCTION_BLOCK
