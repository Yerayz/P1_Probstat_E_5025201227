# 5.a
dexp(3)

# 5.b
set.seed(1)
hist(rexp(10, 3))
hist(rexp(100, 3))
hist(rexp(1000, 3))
hist(rexp(10000, 3))

# 5.c
n = 100
set.seed(1)
mean(rexp(n, rate = 3))
(sd(rexp(n, rate = 3))) ^ 2