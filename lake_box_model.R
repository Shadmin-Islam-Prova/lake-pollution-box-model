# Lake pollution box model

rm(list = ls())

# Parameters
C0 <- 0           # Initial concentration in the lake (kg/m3)
C1 <- 0.002       # Pollutant concentration in river 1 (kg/m3)
C2 <- 0.001       # Pollutant concentration in river 2 (kg/m3)
Q1 <- 7           # Discharge of river 1 (m3/s)
Q2 <- 100         # Discharge of river 2 (m3/s)
V  <- 1e8         # Lake volume (m3)

# Simplifications
a <- Q1 * C1 + Q2 * C2     # Pollutant inflow (kg/s)
b <- Q1 + Q2               # Total flow (m3/s)

# Time grid: 0 to 1 day, in seconds
time <- seq(0, 86400, by = 60)

# Analytical solution
C <- (a + (b * C0 - a) * exp(-b * time / V)) / b

# Result after 1 day
cat("Concentration after 1 day:", tail(C, 1), "kg/m3\n")

# Plot
plot(time / 3600, C, type = "l", col = "blue", lwd = 2,
     xlab = "Time (hours)", ylab = "Concentration (kg/m3)",
     main = "Analytical Solution for Concentration in Lake")
