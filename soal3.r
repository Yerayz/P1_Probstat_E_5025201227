birth_mean=4.5

# 3.a
dpois(6, birth_mean)

# 3.b
set.seed(2)
babies <- data.frame('data' = rpois(365, 4.5))
babies %>% ggplot() +
    geom_histogram(aes(x = data,y = stat(count / sum(count)), fill = data == 6),
    binwidth = 1, color = 'black',) + scale_x_continuous(breaks = 0:10) + 
    labs(x = 'Number of babies born per period', y = 'Proportion',
    title = '365 simulated births in a hospital with Pois(lambda = 4.5)') + theme_bw()

# 3.d
variance = birth_mean
birth_mean
variance