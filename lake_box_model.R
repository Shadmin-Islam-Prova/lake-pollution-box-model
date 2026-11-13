# Lake pollution box model: analytical solution
# Author: Shadmin Islam Prova
# Course: GMT-508, MS Disaster Science and Climate Resilience, University of Dhaka

rm(list = ls())

# Parameters
C0 <- 0           # Initial concentration in the lake (kg/m3)
C1 <- 0.002       # Pollutant concentration in river 1 (kg/m3)
C2 <- 0.001       # Pollutant concentration in river 2 (kg/m3)
Q1 <- 7           # Discharge of river 1 (m3/s)
Q2 <- 100         # Discharge of river 2 (m3/s)
V  <- 1e8         # Lake volume (m3)
dt <- 1           # Time step (s)
total_time <- 86400  # Total time: 1 day (s)

# Time grid
time <- seq(0, total_time, by = dt)

# Analytical solution of the well-mixed lake
Q <- Q1 + Q2
C_steady <- (Q1 * C1 + Q2 * C2) / Q
concentration <- C_steady + (C0 - C_steady) * exp(-Q * time / V)

# Plot on screen
plot(time / 3600, concentration, type = "l", col = "blue", lwd = 2,
     xlab = "Time (hours)", ylab = "Concentration (kg/m3)",
     main = "Analytical Solution for Concentration in Lake")

# Save the plot as a PNG file
png("lake_concentration.png", width = 600, height = 450)
plot(time / 3600, concentration, type = "l", col = "blue", lwd = 2,
     xlab = "Time (hours)", ylab = "Concentration (kg/m3)",
     main = "Analytical Solution for Concentration in Lake")
dev.off()
