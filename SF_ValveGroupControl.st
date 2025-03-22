FUNCTION_BLOCK SF_ValveGroupControl
VAR_INPUT
        Activate: BOOL;
        S_ValveStatus1: SAFEWORD;
        S_ValveStatus2: SAFEWORD;
        S_ValveStatus3: SAFEWORD;
        S_ValveStatus4: SAFEWORD;
        S_ValveStatus5: SAFEWORD;
        S_ValveStatus6: SAFEWORD;
        S_ValveStatus7: SAFEWORD;
        S_ValveStatus8: SAFEWORD;
        UsedValves: INT;
END_VAR
VAR_OUTPUT
        Ready: BOOL;
        S_ValveOut1: SAFEBOOL;
        S_ValveOut2: SAFEBOOL;
        S_ValveOut3: SAFEBOOL;
        S_ValveOut4: SAFEBOOL;
        S_ValveOut5: SAFEBOOL;
        S_ValveOut6: SAFEBOOL;
        S_ValveOut7: SAFEBOOL;
        S_ValveOut8: SAFEBOOL;
        ValvesOK: BOOL;
        Error: BOOL;
        DiagCode: WORD;
        AdditionalDiagCode: BYTE;
END_VAR
VAR
    InternalLoggedOn: BOOL;

    Valve1LoggingOn: BOOL;
    Valve1LoggedOn: BOOL;
    Valve1InvalidStart: BOOL;

    Valve2LoggingOn: BOOL;
    Valve2LoggedOn: BOOL;
    Valve2InvalidStart: BOOL;

    Valve3LoggingOn: BOOL;
    Valve3LoggedOn: BOOL;
    Valve3InvalidStart: BOOL;

    Valve4LoggingOn: BOOL;
    Valve4LoggedOn: BOOL;
    Valve4InvalidStart: BOOL;

    Valve5LoggingOn: BOOL;
    Valve5LoggedOn: BOOL;
    Valve5InvalidStart: BOOL;

    Valve6LoggingOn: BOOL;
    Valve6LoggedOn: BOOL;
    Valve6InvalidStart: BOOL;

    Valve7LoggingOn: BOOL;
    Valve7LoggedOn: BOOL;
    Valve7InvalidStart: BOOL;

    Valve8LoggingOn: BOOL;
    Valve8LoggedOn: BOOL;
    Valve8InvalidStart: BOOL;
END_VAR


// state changes

// From the PLCopen specification:
// "If the valve function blocks are registered, the state is stored in the internal variable "InternalLoggedOn".
// So the registration process is performed only in the event of a restart of the PLC."
// Therefore, never reset InternalLoggedOn in the implementation.
IF NOT Activate THEN
    DiagCode := 16#0000;
ELSE
    IF DiagCode = 16#8002 OR DiagCode = 16#8014 OR DiagCode = 16#8024 OR DiagCode = 16#8034 OR DiagCode = 16#8044 OR DiagCode = 16#8054 OR DiagCode = 16#8064 OR DiagCode = 16#8074 OR DiagCode = 16#8084 THEN
        IF (UsedValves >= 1) THEN
            Valve1InvalidStart := FALSE;
            IF S_ValveStatus1 = 16#83FF THEN
                Valve1LoggingOn := TRUE;
            ELSE
                IF S_ValveStatus1 = 16#0000 THEN
                    // valve logged off
                    Valve1LoggedOn := FALSE;
                ELSIF Valve1LoggingOn AND S_ValveStatus1 = 16#8401 THEN
                    // valve logged on
                    Valve1LoggedOn := TRUE;
                END_IF;
                IF NOT Valve1LoggedOn AND S_ValveStatus1 <> 16#0000 THEN
                    Valve1InvalidStart := TRUE;
                END_IF;
                Valve1LoggingOn := FALSE;
            END_IF;
        END_IF;
        IF (UsedValves >= 2) THEN
            Valve2InvalidStart := FALSE;
            IF S_ValveStatus2 = 16#83FF THEN
                Valve2LoggingOn := TRUE;
            ELSE
                IF S_ValveStatus2 = 16#0000 THEN
                    // valve logged off
                    Valve2LoggedOn := FALSE;
                ELSIF Valve2LoggingOn AND S_ValveStatus2 = 16#8401 THEN
                    // valve logged on
                    Valve2LoggedOn := TRUE;
                END_IF;
                IF NOT Valve2LoggedOn AND S_ValveStatus2 <> 16#0000 THEN
                    Valve2InvalidStart := TRUE;
                END_IF;
                Valve2LoggingOn := FALSE;
            END_IF;
        END_IF;
        IF (UsedValves >= 3) THEN
            Valve3InvalidStart := FALSE;
            IF S_ValveStatus3 = 16#83FF THEN
                Valve3LoggingOn := TRUE;
            ELSE
                IF S_ValveStatus3 = 16#0000 THEN
                    // valve logged off
                    Valve3LoggedOn := FALSE;
                ELSIF Valve3LoggingOn AND S_ValveStatus3 = 16#8401 THEN
                    // valve logged on
                    Valve3LoggedOn := TRUE;
                END_IF;
                IF NOT Valve3LoggedOn AND S_ValveStatus3 <> 16#0000 THEN
                    Valve3InvalidStart := TRUE;
                END_IF;
                Valve3LoggingOn := FALSE;
            END_IF;
        END_IF;
        IF (UsedValves >= 4) THEN
            Valve4InvalidStart := FALSE;
            IF S_ValveStatus4 = 16#83FF THEN
                Valve4LoggingOn := TRUE;
            ELSE
                IF S_ValveStatus4 = 16#0000 THEN
                    // valve logged off
                    Valve4LoggedOn := FALSE;
                ELSIF Valve4LoggingOn AND S_ValveStatus4 = 16#8401 THEN
                    // valve logged on
                    Valve4LoggedOn := TRUE;
                END_IF;
                IF NOT Valve4LoggedOn AND S_ValveStatus4 <> 16#0000 THEN
                    Valve4InvalidStart := TRUE;
                END_IF;
                Valve4LoggingOn := FALSE;
            END_IF;
        END_IF;
        IF (UsedValves >= 5) THEN
            Valve5InvalidStart := FALSE;
            IF S_ValveStatus5 = 16#83FF THEN
                Valve5LoggingOn := TRUE;
            ELSE
                IF S_ValveStatus5 = 16#0000 THEN
                    // valve logged off
                    Valve5LoggedOn := FALSE;
                ELSIF Valve5LoggingOn AND S_ValveStatus5 = 16#8401 THEN
                    // valve logged on
                    Valve5LoggedOn := TRUE;
                END_IF;
                IF NOT Valve5LoggedOn AND S_ValveStatus5 <> 16#0000 THEN
                    Valve5InvalidStart := TRUE;
                END_IF;
                Valve5LoggingOn := FALSE;
            END_IF;
        END_IF;
        IF (UsedValves >= 6) THEN
            Valve6InvalidStart := FALSE;
            IF S_ValveStatus6 = 16#83FF THEN
                Valve6LoggingOn := TRUE;
            ELSE
                IF S_ValveStatus6 = 16#0000 THEN
                    // valve logged off
                    Valve6LoggedOn := FALSE;
                ELSIF Valve6LoggingOn AND S_ValveStatus6 = 16#8401 THEN
                    // valve logged on
                    Valve6LoggedOn := TRUE;
                END_IF;
                IF NOT Valve6LoggedOn AND S_ValveStatus6 <> 16#0000 THEN
                    Valve6InvalidStart := TRUE;
                END_IF;
                Valve6LoggingOn := FALSE;
            END_IF;
        END_IF;
        IF (UsedValves >= 7) THEN
            Valve7InvalidStart := FALSE;
            IF S_ValveStatus7 = 16#83FF THEN
                Valve7LoggingOn := TRUE;
            ELSE
                IF S_ValveStatus7 = 16#0000 THEN
                    // valve logged off
                    Valve7LoggedOn := FALSE;
                ELSIF Valve7LoggingOn AND S_ValveStatus7 = 16#8401 THEN
                    // valve logged on
                    Valve7LoggedOn := TRUE;
                END_IF;
                IF NOT Valve7LoggedOn AND S_ValveStatus7 <> 16#0000 THEN
                    Valve7InvalidStart := TRUE;
                END_IF;
                Valve7LoggingOn := FALSE;
            END_IF;
        END_IF;
        IF (UsedValves >= 8) THEN
            Valve8InvalidStart := FALSE;
            IF S_ValveStatus8 = 16#83FF THEN
                Valve8LoggingOn := TRUE;
            ELSE
                IF S_ValveStatus8 = 16#0000 THEN
                    // valve logged off
                    Valve8LoggedOn := FALSE;
                ELSIF Valve8LoggingOn AND S_ValveStatus8 = 16#8401 THEN
                    // valve logged on
                    Valve8LoggedOn := TRUE;
                END_IF;
                IF NOT Valve8LoggedOn AND S_ValveStatus8 <> 16#0000 THEN
                    Valve8InvalidStart := TRUE;
                END_IF;
                Valve8LoggingOn := FALSE;
            END_IF;
        END_IF;
    END_IF;

    IF DiagCode = 16#8002 AND NOT InternalLoggedOn THEN
        // Set InternalLoggedOn to TRUE and check all connected valves,
        // and set it back to FALSE if one valve is not logged in.
        // The log-in sequence is 16#83FF -> 16#8401
        InternalLoggedOn := TRUE;
        IF (UsedValves >= 1) AND NOT Valve1LoggedOn THEN
            InternalLoggedOn := FALSE;
        END_IF;
        IF (UsedValves >= 2) AND NOT Valve2LoggedOn THEN
            InternalLoggedOn := FALSE;
        END_IF;
        IF (UsedValves >= 3) AND NOT Valve3LoggedOn THEN
            InternalLoggedOn := FALSE;
        END_IF;
        IF (UsedValves >= 4) AND NOT Valve4LoggedOn THEN
            InternalLoggedOn := FALSE;
        END_IF;
        IF (UsedValves >= 5) AND NOT Valve5LoggedOn THEN
            InternalLoggedOn := FALSE;
        END_IF;
        IF (UsedValves >= 6) AND NOT Valve6LoggedOn THEN
            InternalLoggedOn := FALSE;
        END_IF;
        IF (UsedValves >= 7) AND NOT Valve7LoggedOn THEN
            InternalLoggedOn := FALSE;
        END_IF;
        IF (UsedValves >= 8) AND NOT Valve8LoggedOn THEN
            InternalLoggedOn := FALSE;
        END_IF;
    END_IF;
END_IF;

CASE DiagCode OF
16#0000:
    IF Activate THEN
        DiagCode := 16#8001;
    END_IF;
16#8001:
    IF (UsedValves < 0) OR (UsedValves > 8) THEN
        DiagCode := 16#C000;
    ELSIF (UsedValves >= 0) AND (UsedValves <= 8) AND NOT InternalLoggedOn THEN
        DiagCode := 16#8002;
    ELSIF InternalLoggedOn THEN
        DiagCode := 16#8006;
    END_IF;
16#C000:
    // can only be left with deactivation and reactivation
16#8002:
    IF Valve1InvalidStart THEN
        // From PLCopen specification: "Valve 1 is set as used but has not logged on."
        DiagCode := 16#C510;
    ELSIF Valve2InvalidStart THEN
        DiagCode := 16#C520;
    ELSIF Valve3InvalidStart THEN
        DiagCode := 16#C530;
    ELSIF Valve4InvalidStart THEN
        DiagCode := 16#C540;
    ELSIF Valve5InvalidStart THEN
        DiagCode := 16#C550;
    ELSIF Valve6InvalidStart THEN
        DiagCode := 16#C560;
    ELSIF Valve7InvalidStart THEN
        DiagCode := 16#C570;
    ELSIF Valve8InvalidStart THEN
        DiagCode := 16#C580;
    ELSIF InternalLoggedOn THEN
        DiagCode := 16#8006;
    END_IF;
16#C510,
16#C520,
16#C530,
16#C540,
16#C550,
16#C560,
16#C570,
16#C580:
    // can only be left with deactivation and reactivation
16#8006:
    IF UsedValves >= 1 AND S_ValveStatus1 >= 16#C000 THEN
        DiagCode := 16#C410;
    ELSIF UsedValves >= 2 AND S_ValveStatus2 >= 16#C000 THEN
        DiagCode := 16#C420;
    ELSIF UsedValves >= 3 AND S_ValveStatus3 >= 16#C000 THEN
        DiagCode := 16#C430;
    ELSIF UsedValves >= 4 AND S_ValveStatus4 >= 16#C000 THEN
        DiagCode := 16#C440;
    ELSIF UsedValves >= 5 AND S_ValveStatus5 >= 16#C000 THEN
        DiagCode := 16#C450;
    ELSIF UsedValves >= 6 AND S_ValveStatus6 >= 16#C000 THEN
        DiagCode := 16#C460;
    ELSIF UsedValves >= 7 AND S_ValveStatus7 >= 16#C000 THEN
        DiagCode := 16#C470;
    ELSIF UsedValves >= 8 AND S_ValveStatus8 >= 16#C000 THEN
        DiagCode := 16#C480;
    ELSIF UsedValves >= 1 AND S_ValveStatus1 = 16#0000 THEN
        Valve1LoggedOn := FALSE;
        DiagCode := 16#8014;
    ELSIF UsedValves >= 2 AND S_ValveStatus2 = 16#0000 THEN
        Valve2LoggedOn := FALSE;
        DiagCode := 16#8024;
    ELSIF UsedValves >= 3 AND S_ValveStatus3 = 16#0000 THEN
        Valve3LoggedOn := FALSE;
        DiagCode := 16#8034;
    ELSIF UsedValves >= 4 AND S_ValveStatus4 = 16#0000 THEN
        Valve4LoggedOn := FALSE;
        DiagCode := 16#8044;
    ELSIF UsedValves >= 5 AND S_ValveStatus5 = 16#0000 THEN
        Valve5LoggedOn := FALSE;
        DiagCode := 16#8054;
    ELSIF UsedValves >= 6 AND S_ValveStatus6 = 16#0000 THEN
        Valve6LoggedOn := FALSE;
        DiagCode := 16#8064;
    ELSIF UsedValves >= 7 AND S_ValveStatus7 = 16#0000 THEN
        Valve7LoggedOn := FALSE;
        DiagCode := 16#8074;
    ELSIF UsedValves >= 8 AND S_ValveStatus8 = 16#0000 THEN
        Valve8LoggedOn := FALSE;
        DiagCode := 16#8084;
    ELSE
        DiagCode := 16#8000;
    END_IF
16#8000:
    IF UsedValves >= 1 AND S_ValveStatus1 >= 16#C000 THEN
        DiagCode := 16#C410;
    ELSIF UsedValves >= 2 AND S_ValveStatus2 >= 16#C000 THEN
        DiagCode := 16#C420;
    ELSIF UsedValves >= 3 AND S_ValveStatus3 >= 16#C000 THEN
        DiagCode := 16#C430;
    ELSIF UsedValves >= 4 AND S_ValveStatus4 >= 16#C000 THEN
        DiagCode := 16#C440;
    ELSIF UsedValves >= 5 AND S_ValveStatus5 >= 16#C000 THEN
        DiagCode := 16#C450;
    ELSIF UsedValves >= 6 AND S_ValveStatus6 >= 16#C000 THEN
        DiagCode := 16#C460;
    ELSIF UsedValves >= 7 AND S_ValveStatus7 >= 16#C000 THEN
        DiagCode := 16#C470;
    ELSIF UsedValves >= 8 AND S_ValveStatus8 >= 16#C000 THEN
        DiagCode := 16#C480;
    ELSIF UsedValves >= 1 AND S_ValveStatus1 = 16#0000 THEN
        Valve1LoggedOn := FALSE;
        DiagCode := 16#8014;
    ELSIF UsedValves >= 2 AND S_ValveStatus2 = 16#0000 THEN
        Valve2LoggedOn := FALSE;
        DiagCode := 16#8024;
    ELSIF UsedValves >= 3 AND S_ValveStatus3 = 16#0000 THEN
        Valve3LoggedOn := FALSE;
        DiagCode := 16#8034;
    ELSIF UsedValves >= 4 AND S_ValveStatus4 = 16#0000 THEN
        Valve4LoggedOn := FALSE;
        DiagCode := 16#8044;
    ELSIF UsedValves >= 5 AND S_ValveStatus5 = 16#0000 THEN
        Valve5LoggedOn := FALSE;
        DiagCode := 16#8054;
    ELSIF UsedValves >= 6 AND S_ValveStatus6 = 16#0000 THEN
        Valve6LoggedOn := FALSE;
        DiagCode := 16#8064;
    ELSIF UsedValves >= 7 AND S_ValveStatus7 = 16#0000 THEN
        Valve7LoggedOn := FALSE;
        DiagCode := 16#8074;
    ELSIF UsedValves >= 8 AND S_ValveStatus8 = 16#0000 THEN
        Valve8LoggedOn := FALSE;
        DiagCode := 16#8084;
    END_IF
16#C410:
    IF (UsedValves < 1 OR S_ValveStatus1 < 16#C000) THEN
        DiagCode := 16#8006;
    END_IF
16#C420:
    IF (UsedValves < 2 OR S_ValveStatus2 < 16#C000) THEN
        DiagCode := 16#8006;
    END_IF
16#C430:
    IF (UsedValves < 3 OR S_ValveStatus3 < 16#C000) THEN
        DiagCode := 16#8006;
    END_IF
16#C440:
    IF (UsedValves < 4 OR S_ValveStatus4 < 16#C000) THEN
        DiagCode := 16#8006;
    END_IF
16#C450:
    IF (UsedValves < 5 OR S_ValveStatus5 < 16#C000) THEN
        DiagCode := 16#8006;
    END_IF
16#C460:
    IF (UsedValves < 6 OR S_ValveStatus6 < 16#C000) THEN
        DiagCode := 16#8006;
    END_IF
16#C470:
    IF (UsedValves < 7 OR S_ValveStatus7 < 16#C000) THEN
        DiagCode := 16#8006;
    END_IF
16#C480:
    IF (UsedValves < 8 OR S_ValveStatus8 < 16#C000) THEN
        DiagCode := 16#8006;
    END_IF
16#8014:
    IF UsedValves >= 1 AND Valve1LoggedOn THEN
        DiagCode := 16#8006;
    END_IF
16#8024:
    IF UsedValves >= 2 AND Valve2LoggedOn THEN
        DiagCode := 16#8006;
    END_IF
16#8034:
    IF UsedValves >= 3 AND Valve3LoggedOn THEN
        DiagCode := 16#8006;
    END_IF
16#8044:
    IF UsedValves >= 4 AND Valve4LoggedOn THEN
        DiagCode := 16#8006;
    END_IF
16#8054:
    IF UsedValves >= 5 AND Valve5LoggedOn THEN
        DiagCode := 16#8006;
    END_IF
16#8064:
    IF UsedValves >= 6 AND Valve6LoggedOn THEN
        DiagCode := 16#8006;
    END_IF
16#8074:
    IF UsedValves >= 7 AND Valve7LoggedOn THEN
        DiagCode := 16#8006;
    END_IF
16#8084:
    IF UsedValves >= 8 AND Valve8LoggedOn THEN
        DiagCode := 16#8006;
    END_IF
END_CASE;


// set output variables
IF UsedValves > 0 AND DiagCode > 16#0000 AND DiagCode < 16#C000 THEN
    // From PLCopen specificcation, ValvesOK is set:
    // "Depending on the states of all relevant valves"
    // and
    // "FALSE: One or more valves are not in the safe state or an error occurred.
    // TRUE: All valves are in the safe state, no error is present."
    // Also, the timing diagrams show that ValvesOK is set to TRUE at logging on already,
    // not only after the logging on process is finished.
    // It is not clear from the specification if the ValvesOK is set to FALSE when a valve logs out.
    // This implementation sets ValvesOK to FALSE when a valve within the UsedValves-range logs out.
    ValvesOK := TRUE;
    IF (UsedValves >= 1) AND (S_ValveStatus1 = 16#0000 OR S_ValveStatus1 >= 16#C000) THEN
        ValvesOK := FALSE;
    END_IF;
    IF (UsedValves >= 2) AND (S_ValveStatus2 = 16#0000 OR S_ValveStatus2 >= 16#C000) THEN
        ValvesOK := FALSE;
    END_IF;
    IF (UsedValves >= 3) AND (S_ValveStatus3 = 16#0000 OR S_ValveStatus3 >= 16#C000) THEN
        ValvesOK := FALSE;
    END_IF;
    IF (UsedValves >= 4) AND (S_ValveStatus4 = 16#0000 OR S_ValveStatus4 >= 16#C000) THEN
        ValvesOK := FALSE;
    END_IF;
    IF (UsedValves >= 5) AND (S_ValveStatus5 = 16#0000 OR S_ValveStatus5 >= 16#C000) THEN
        ValvesOK := FALSE;
    END_IF;
    IF (UsedValves >= 6) AND (S_ValveStatus6 = 16#0000 OR S_ValveStatus6 >= 16#C000) THEN
        ValvesOK := FALSE;
    END_IF;
    IF (UsedValves >= 7) AND (S_ValveStatus7 = 16#0000 OR S_ValveStatus7 >= 16#C000) THEN
        ValvesOK := FALSE;
    END_IF;
    IF (UsedValves >= 8) AND (S_ValveStatus8 = 16#0000 OR S_ValveStatus8 >= 16#C000) THEN
        ValvesOK := FALSE;
    END_IF;
ELSE
    ValvesOK := FALSE;
END_IF;
CASE DiagCode OF
16#0000:
    Ready := FALSE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#00;
16#8001:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#00;
16#8002:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    // From PLCopen specification, AdditionalDiagCode is:
    // "depending on which valve is marked for use but not logged on yet"
    AdditionalDiagCode := 16#00;
    IF (UsedValves >= 1) AND NOT Valve1LoggedOn THEN
        AdditionalDiagCode := AdditionalDiagCode + 16#01;
    END_IF;
    IF (UsedValves >= 2) AND NOT Valve2LoggedOn THEN
        AdditionalDiagCode := AdditionalDiagCode + 16#02;
    END_IF;
    IF (UsedValves >= 3) AND NOT Valve3LoggedOn THEN
        AdditionalDiagCode := AdditionalDiagCode + 16#04;
    END_IF;
    IF (UsedValves >= 4) AND NOT Valve4LoggedOn THEN
        AdditionalDiagCode := AdditionalDiagCode + 16#08;
    END_IF;
    IF (UsedValves >= 5) AND NOT Valve5LoggedOn THEN
        AdditionalDiagCode := AdditionalDiagCode + 16#10;
    END_IF;
    IF (UsedValves >= 6) AND NOT Valve6LoggedOn THEN
        AdditionalDiagCode := AdditionalDiagCode + 16#20;
    END_IF;
    IF (UsedValves >= 7) AND NOT Valve7LoggedOn THEN
        AdditionalDiagCode := AdditionalDiagCode + 16#40;
    END_IF;
    IF (UsedValves >= 8) AND NOT Valve8LoggedOn THEN
        AdditionalDiagCode := AdditionalDiagCode + 16#80;
    END_IF;
16#8006:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#00;
16#8014:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#01;
16#8024:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#02;
16#8034:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#04;
16#8044:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#08;
16#8054:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#10;
16#8064:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#20;
16#8074:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#40;
16#8084:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := FALSE;
    AdditionalDiagCode := 16#80;
16#8000:
    Ready := TRUE;
    AdditionalDiagCode := 16#00;
    IF (UsedValves >= 1) AND (S_ValveStatus1 = 16#8020) THEN
        S_ValveOut1 := TRUE;
        AdditionalDiagCode := AdditionalDiagCode + 16#01;
    ELSE
        S_ValveOut1 := FALSE;
    END_IF;
    IF (UsedValves >= 2) AND (S_ValveStatus2 = 16#8020) THEN
        S_ValveOut2 := TRUE;
        AdditionalDiagCode := AdditionalDiagCode + 16#02;
    ELSE
        S_ValveOut2 := FALSE;
    END_IF;
    IF (UsedValves >= 3) AND (S_ValveStatus3 = 16#8020) THEN
        S_ValveOut3 := TRUE;
        AdditionalDiagCode := AdditionalDiagCode + 16#04;
    ELSE
        S_ValveOut3 := FALSE;
    END_IF;
    IF (UsedValves >= 4) AND (S_ValveStatus4 = 16#8020) THEN
        S_ValveOut4 := TRUE;
        AdditionalDiagCode := AdditionalDiagCode + 16#08;
    ELSE
        S_ValveOut4 := FALSE;
    END_IF;
    IF (UsedValves >= 5) AND (S_ValveStatus5 = 16#8020) THEN
        S_ValveOut5 := TRUE;
        AdditionalDiagCode := AdditionalDiagCode + 16#10;
    ELSE
        S_ValveOut5 := FALSE;
    END_IF;
    IF (UsedValves >= 6) AND (S_ValveStatus6 = 16#8020) THEN
        S_ValveOut6 := TRUE;
        AdditionalDiagCode := AdditionalDiagCode + 16#20;
    ELSE
        S_ValveOut6 := FALSE;
    END_IF;
    IF (UsedValves >= 7) AND (S_ValveStatus7 = 16#8020) THEN
        S_ValveOut7 := TRUE;
        AdditionalDiagCode := AdditionalDiagCode + 16#40;
    ELSE
        S_ValveOut7 := FALSE;
    END_IF;
    IF (UsedValves >= 8) AND (S_ValveStatus8 = 16#8020) THEN
        S_ValveOut8 := TRUE;
        AdditionalDiagCode := AdditionalDiagCode + 16#80;
    ELSE
        S_ValveOut8 := FALSE;
    END_IF;
    Error := FALSE;

// errors
16#C000:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#00;
16#C410:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#01;
16#C420:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#02;
16#C430:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#04;
16#C440:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#08;
16#C450:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#10;
16#C460:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#20;
16#C470:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#40;
16#C480:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#80;
16#C510:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#01;
16#C520:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#02;
16#C530:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#04;
16#C540:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#08;
16#C550:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#10;
16#C560:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#20;
16#C570:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#40;
16#C580:
    Ready := TRUE;
    S_ValveOut1 := FALSE;
    S_ValveOut2 := FALSE;
    S_ValveOut3 := FALSE;
    S_ValveOut4 := FALSE;
    S_ValveOut5 := FALSE;
    S_ValveOut6 := FALSE;
    S_ValveOut7 := FALSE;
    S_ValveOut8 := FALSE;
    Error := TRUE;
    AdditionalDiagCode := 16#80;
END_CASE;

END_FUNCTION_BLOCK