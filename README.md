# LTL-Based Test Case Generation for PLCopen Safety Function Blocks

Artifacts accompanying the paper. For each PLCopen safety function block (FB),
the repository contains four files:

| File                 | Content                                               |
|----------------------|-------------------------------------------------------|
| `<FB>.st`            | Structured Text implementation of the FB              |
| `<FB>_LTL.txt`       | LTL specification of the FB                           |
| `<FB>.smv`           | nuXmv model used for model checking                   |
| `<FB>_Test.st`       | Generated test cases (Structured Text)                |

## Function blocks

| Function block              | Implementation | LTL | Model | Tests |
|-----------------------------|---|---|---|---|
| SF_DoubleValveMonitoring    | [st](SF_DoubleValveMonitoring.st) | [ltl](SF_DoubleValveMonitoring_LTL.txt) | [smv](SF_DoubleValveMonitoring.smv) | [tests](SF_DoubleValveMonitoring_Test.st) |
| SF_EnableSwitch2            | [st](SF_EnableSwitch2.st) | [ltl](SF_EnableSwitch2_LTL.txt) | [smv](SF_EnableSwitch2.smv) | [tests](SF_EnableSwitch2_Test.st) |
| SF_Equivalent             | [st](SF_Equivalent_U.st) | [ltl](SF_Equivalent_U_LTL.txt) | [smv](SF_Equivalent_U.smv) | [tests](SF_Equivalent_U_Test.st) |
| SF_FootSwitch               | [st](SF_FootSwitch.st) | [ltl](SF_FootSwitch_LTL.txt) | [smv](SF_FootSwitch.smv) | [tests](SF_FootSwitch_Test.st) |
| SF_ModeSelector             | [st](SF_ModeSelector.st) | [ltl](SF_ModeSelector_LTL.txt) | [smv](SF_ModeSelector.smv) | [tests](SF_ModeSelector_Test.st) |
| SF_TwoHandControlTypeII     | [st](SF_TwoHandControlTypeII.st) | [ltl](SF_TwoHandControlTypeII_LTL.txt) | [smv](SF_TwoHandControlTypeII.smv) | [tests](SF_TwoHandControlTypeII_Test.st) |
| SF_ValveGroupControl        | [st](SF_ValveGroupControl.st) | [ltl](SF_ValveGroupControl_LTL.txt) | [smv](SF_ValveGroupControl.smv) | [tests](SF_ValveGroupControl_Test.st) |
