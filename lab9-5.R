sched_dep_data <- flights %>% 
  mutate(week = wday(sched_dep_time, label = TRUE)) %>% 
  group_by(week) %>% 
  summarise(avg_delay = mean(arr_delay, na.rm = TRUE), n = n())

ggplotly(ggplot(sched_dep_data, aes(x = week, y = avg_delay)) +
           geom_point(size = 2, color = "yellow") +
           labs(x = "Дни недели", y = "Средняя задержка(мин)", 
                title = "Средняя задержка рейсов в течение недели"))