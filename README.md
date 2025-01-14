# Julia Floating-Point Comparison Bug

This repository demonstrates a common subtle bug in Julia related to floating-point number comparisons.  The `myfunction` function is intended to square its input, but may behave unpredictably for values near zero due to the limitations of floating-point precision.  The solution shows a more robust way to handle floating-point comparisons.

## Bug

The original code uses `elseif x == 0`, which might not work correctly when `x` is a floating-point number very close to zero but not exactly zero (due to rounding errors).

## Solution

The solution uses an absolute tolerance to compare floating-point numbers, ensuring that values within a small range of 0 are treated as 0.
