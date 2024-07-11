sched_dep_data <- flights %>% 
  mutate(hour = hour(sched_dep_time)) %>% 
  group_by(hour) %>% 
  summarise(
    avg_delay = mean(arr_delay, na.rm = TRUE),
    n = n())

ggplotly(ggplot(sched_dep_data, aes(hour, n)) +
           geom_line(color = "red")+
           geom_point( size = 2, color = "green") +
           labs(x = "Часы", 
                y = "Количество запланированных вылетов", 
                title = "Количество запланированных вылетов в течение суток"))


ggplotly(ggplot(dep_avg_data, aes(minute, avg_delay)) +
           geom_col(color = "red")+
           geom_point( size = 2, color = "green") +
           labs(x = "Время(мин)", 
                y = "Кол-во запланированных вылетов", 
                title = "Кол-во запланированных вылетов за час"))

sr_delay <- flights %>%
  mutate(hour = hour(dep_time)) %>%
  group_by(hour) %>%
  summarise(
    avg_delay = mean(arr_delay, na.rm = TRUE),
    n = n()
  )
ggplotly(ggplot(sr_delay, aes(hour, avg_delay)) +
           geom_col(color = "red")+
           geom_point(size = 2, color = "green") +
           labs(x = "Время отправления (в часах)", 
                y = "Средняя задержка (в мин)",
                title = "Среднее время задержки в течение дня"))