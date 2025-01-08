# VHDL Multiplier with Overflow Handling
This repository demonstrates a potential overflow issue in a VHDL multiplier and its corrected version.

## Bug Description
The original VHDL code implements a simple multiplier, but it lacks explicit handling for potential overflow situations.  When the input values `a` and `b` are large enough that their product exceeds the capacity of the `result` signal (16 bits), the result will be truncated, leading to incorrect calculations.

## Solution
The corrected code (`multiplier_fixed.vhdl`) addresses this by adding an overflow check before performing the multiplication.  If an overflow is detected, an appropriate error handling mechanism (e.g., setting an overflow flag) is incorporated to manage the situation gracefully.

## How to Use
1.  Simulate the original multiplier (`multiplier.vhdl`) to observe the overflow issue.
2.  Compare the results with the corrected multiplier (`multiplier_fixed.vhdl`)

## Note
This example provides a basic approach to addressing overflow in VHDL.  In a real-world application, more sophisticated error handling strategies might be required, depending on the specific requirements of the design.