n = 100
mean = 50
sd = 8

# 6.a
set.seed(1)
temp <- rnorm(n, mean, sd)
temp
summary(temp)

x1 = runif(1, min = min(temp), max = mean)
x2 = runif(1, min = mean, max = max(temp))
x1
x2

prob1 <- pnorm(x1, mean, sd)
prob2 <- pnorm(x2, mean, sd)
prob1
prob2

prob <- prob2 - prob1
plot(temp)

# 6.b
data = temp
hist(data, breaks = 50, main = "5025201237_Bimantara Tito Wahyudi_E_DNHistogram")

# 6.c
(sd(data)) ^ 2