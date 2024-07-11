library(lubridate)
library(tidyverse)
library(nycflights13)
library(ggplot2)
library(plotly)
library(dplyr)
options(max.print = 50)
make_datetime_100 <- function(year, month, day, time) {
  make_datetime(year, month, day, time %/% 100, time %% 100)
}

flights <- flights %>% 
  filter(!is.na(dep_time), !is.na(arr_time)) %>% 
  mutate(
    dep_time = make_datetime_100(year, month, day, dep_time),
    arr_time = make_datetime_100(year, month, day, arr_time),
    sched_dep_time = make_datetime_100(year, month, day, sched_dep_time),
    sched_arr_time = make_datetime_100(year, month, day, sched_arr_time)
  ) %>% select(origin, dest, ends_with("delay"), ends_with("time"))

dep_time_season_data <- flights %>%
  mutate(hour = hour(dep_time), month = month(dep_time)) %>%
  group_by(month, hour) %>%
  summarise(n = n())
ggplotly(ggplot(dep_time_season_data, aes(hour, n, color = month)) +
           labs(x = "Время отправления (часы)", 
                y = "Количество рейсов",
                title = "Изменение распределения времени полета в течение дня в году")+
           geom_point(size = 1.5) +
           scale_color_gradient(low = "blue",high = "red"))