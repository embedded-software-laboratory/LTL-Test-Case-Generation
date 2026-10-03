FUNCTION_BLOCK SF_TwoHandControlTypeII
VAR_INPUT
    Activate: BOOL;
    S_Button1: BOOL;
    S_Button2: BOOL;
END_VAR
VAR_OUTPUT
    Ready: BOOL;
    S_TwoHandOut: BOOL;
    SafetyDemand: BOOL;
    Error: BOOL;
    DiagCode: UINT;
END_VAR


BEGIN

IF NOT Activate THEN
    DiagCode := 16#0000;

    Ready := FALSE;
    SafetyDemand := FALSE;
    Error := FALSE;
    S_TwoHandOut := FALSE;

ELSE
    CASE DiagCode OF
    16#0000:
        DiagCode := 16#8001;
    16#8001:
        IF S_Button1 AND S_Button2 THEN
            DiagCode := 16#C030;
        ELSIF S_Button1 THEN
            DiagCode := 16#C010;
        ELSIF S_Button2 THEN
            DiagCode := 16#C020;
        ELSE
            DiagCode := 16#8802;
        END_IF;
    16#8802:
        IF S_Button1 AND S_Button2 THEN
            DiagCode := 16#8000;
        ELSIF S_Button1 THEN
            DiagCode := 16#8804;
        ELSIF S_Button2 THEN
            DiagCode := 16#8806;
        END_IF;
    16#8804:
        IF NOT (S_Button1 OR S_Button2) THEN
            DiagCode := 16#8802;
        ELSIF NOT S_Button1 AND S_Button2 THEN
            DiagCode := 16#880E;
        ELSIF S_Button1 AND S_Button2 THEN
            DiagCode := 16#8000;
        END_IF;
    16#8806:
        IF NOT (S_Button1 OR S_Button2) THEN
            DiagCode := 16#8802;
        ELSIF S_Button1 AND NOT S_Button2 THEN
            DiagCode := 16#880E;
        ELSIF S_Button1 AND S_Button2 THEN
            DiagCode := 16#8000;
        END_IF;
    16#8808:
        IF S_Button1 AND S_Button2 THEN
            DiagCode := 16#880C;
        ELSIF NOT S_Button1 AND S_Button2 THEN
            DiagCode := 16#880A;
        ELSIF NOT (S_Button1 OR S_Button2) THEN
            DiagCode := 16#8802;
        END_IF;
    16#880A:
        IF S_Button1 AND S_Button2 THEN
            DiagCode := 16#880C;
        ELSIF S_Button1 AND NOT S_Button2 THEN
            DiagCode := 16#8808;
        ELSIF NOT (S_Button1 OR S_Button2) THEN
            DiagCode := 16#8802;
        END_IF;
    16#880C:
        IF NOT S_Button1 AND S_Button2 THEN
            DiagCode := 16#880A;
        ELSIF S_Button1 AND NOT S_Button2 THEN
            DiagCode := 16#8808;
        ELSIF NOT (S_Button1 OR S_Button2) THEN
            DiagCode := 16#8802;
        END_IF;
    16#880E:
        IF NOT (S_Button1 OR S_Button2) THEN
            DiagCode := 16#8802;
        END_IF;
    16#8000:
        IF S_Button1 AND NOT S_Button2 THEN
            DiagCode := 16#8808;
        ELSIF NOT S_Button1 AND S_Button2 THEN
            DiagCode := 16#880A;
        ELSIF NOT (S_Button1 OR S_Button2) THEN
            DiagCode := 16#8802;
        END_IF;
    16#C010,
    16#C020,
    16#C030:
        IF NOT (S_Button1 OR S_Button2) THEN
            DiagCode := 16#8802;
        END_IF;
    END_CASE;

    CASE DiagCode OF
    16#8000:
        Ready := TRUE;
        SafetyDemand := FALSE;
        Error := FALSE;
        S_TwoHandOut := TRUE;
    16#8001:
        Ready := TRUE;
        SafetyDemand := FALSE;
        Error := FALSE;
        S_TwoHandOut := FALSE;
    16#8802,
    16#8804,
    16#8806,
    16#8808,
    16#880A,
    16#880C,
    16#880E:
        Ready := TRUE;
        SafetyDemand := TRUE;
        Error := FALSE;
        S_TwoHandOut := FALSE;
    16#C010,
    16#C020,
    16#C030:
        Ready := TRUE;
        SafetyDemand := FALSE;
        Error := TRUE;
        S_TwoHandOut := FALSE;
    END_CASE;
END_IF;

END_FUNCTION_BLOCK