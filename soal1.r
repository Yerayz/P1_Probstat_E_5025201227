# 1.a
p = 0.2
n = 3
P <- dgeom(x = n, prob = p)
P

# 1.b
mean(rgeom(n = 10000, prob = p) == 3)

# 1.d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)", x = "Failures prior to first success (x)",
       y = "Probability") 

# 1.e
1/p
(1 - p) / p^2
