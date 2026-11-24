# Lake pollution box model

C0 <- 0; C1 <- 0.002; C2 <- 0.001
Q1 <- 7; Q2 <- 100; V <- 1e8

a <- Q1 * C1 + Q2 * C2
b <- Q1 + Q2

options(scipen = 999)   # Use normal decimal numbers on the axis
time <- seq(0, 60 * 86400, by = 3600)   # 0 to 60 days, hourly steps
C <- (a + (b * C0 - a) * exp(-b * time / V)) / b
plot(time / 86400, C, type = "l", col = "blue", lwd = 2,
     xlab = "Time (days)", ylab = "Concentration (kg/m3)",
     main = "Analytical Solution for Concentration in Lake")
