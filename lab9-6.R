sched_dep_data <- flights %>% 
  mutate(minute = minute(sched_dep_time)) %>% 
  group_by(minute) %>% 
  summarise(n = n())
ggplotly(ggplot(sched_dep_data, aes(minute, n)) +
           geom_col(color = "red")+
           geom_point( size = 2, color = "green") +
           labs(x = "Время(мин)", 
                y = "Количество запланированных вылетов", 
                title = "Количество запланированных вылетов за час"))

ggplotly(ggplot(diamonds, aes(carat, price)) + 
           geom_col(color = "yellow") +
           scale_x_continuous(limits = c(0.1, 2)) +
           labs(title = "Соотношение карат к их стоимости",))