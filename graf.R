library(gapminder)
library(gganimate)

ggplot(gapminder,
       aes(x = gdpPercap,
           y = lifeExp,
           size = pop,
           color = continent,
           label = country)) +
  geom_point(alpha = 0.7) +
  scale_x_log10() +
  labs(x = "PIB per cápita",
       y = "Esperanza de vida",
       title = "Año: {frame_time}") +
  transition_time(year)


ggplot(gapminder,
       aes(x = gdpPercap,
           y = lifeExp,
           size = pop,
           color = continent,
           label = country)) +
  geom_point(alpha = 0.7) +
  geom_text(data = subset(gapminder, country %in% c("Spain", "China")),
            aes(label = country),
            nudge_y = 2,
            size = 4,
            show.legend = FALSE) +
  scale_x_log10() +
  labs(x = "PIB per cápita",
       y = "Esperanza de vida",
       title = "Año: {frame_time}") +
  transition_time(year)
