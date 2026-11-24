# Lake Pollution Box Model

Analytical solution of a lake with two river inflows. The lake is one well-mixed box.

## Equation

C(t) = Cs + (C0 − Cs) · exp(−(Q1 + Q2)·t / V)

Cs = (Q1·C1 + Q2·C2) / (Q1 + Q2)

## Parameters

| Symbol | Value | Unit |
|---|---|---|
| C0 | 0 | kg/m3 |
| C1 | 0.002 | kg/m3 |
| C2 | 0.001 | kg/m3 |
| Q1 | 7 | m3/s |
| Q2 | 100 | m3/s |
| V | 1 × 10^8 | m3 |

## Result

![Lake concentration](2504_Shadmin%20Islam%20Prova.png)

The lake reaches steady state after about 54 days.

## Run

Open `lake_box_model.R` in R or RStudio and run it. No extra packages are needed.

## Author

Shadmin Islam Prova
