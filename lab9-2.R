dep_avg_data <- flights %>% 
  mutate(minute = minute(dep_time)) %>% 
  group_by(minute) %>% 
  summarise(
    avg_delay = mean(arr_delay, na.rm = TRUE),
    n = n())
ggplotly(ggplot(dep_avg_data, aes(minute, avg_delay)) +
           geom_line(color = "red")+
           geom_point(size = 2, color = "green") +
           labs(x = "Время(мин)", 
                y = "Средняя задержка(мин)", 
                title = "Средняя задержка рейсов в течение часа"))

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