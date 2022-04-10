# 2.a
dbinom(4, size = 20, prob = 0.2)

# 2.b
p <- dbinom(1:20, 20, 0.2)
data = data.frame(y=c(p), x=c(1:20))
barplot(data$y, names.arg=data$x, ylab="Probability", xlab="Number of Patients")

# 2.c
4*0.2
4*0.2*(1-0.2)