library(ggplot2)

tunisia <- subset(episodes, country_name == "Tunisia")

ggplot(tunisia, aes(x = year, y = v2x_polyarchy)) +
  geom_line(color = "blue", size = 1.2) +
  labs(title = "Democracy Score Over Time (Tunisia)",
       y = "V-Dem Polyarchy Score (0–1)", x = "Year")

ggsave("tunisia_polyarchy_plot.pdf", width = 8, height = 5)
