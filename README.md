# R_Laboratory-work-No.-9
Lab work #9 - Working with dates and time with lubridate / Лабораторная работа №9 – Работа с датами и временем с помощью lubridate

# Цель работы: научиться работать с датами и временем с помощью пакета `lubridate` / Purpose of work: to learn how to work with dates and time using the `lubridate` package

Для выполнения лабораторной работы понадобится установка и загрузка ряда пакетов. / The lab work will require a number of packages to be installed and downloaded.

```{r}
library(tidyverse)
library(lubridate)
library(nycflights13)	
```
Практическая часть

1) Как в течение года меняется распределение времени полета в течение дня?

2) Сравните dep_time, sched_dep_time и dep_delay. Последовательны ли они? Объясните свои выводы.

3) Сравните air_time с продолжительностью между вылетом и прибытием. Объясните свои выводы. (Подсказка: учитывайте расположение аэропорта.)

4) Как меняется среднее время задержки в течение дня? Что следует использовать: dep_time или sched_dep_time? Почему?

5) В какой день недели лучше уехать, если вы хотите свести к минимуму вероятность задержки?

6)В чем сходство распределения diamonds$carat и flights$sched_dep_time?

7) Подтвердите гипотезу о том, что ранние вылеты рейсов через 20-30 и 50-60 минут вызваны ранним вылетом регулярных рейсов. Подсказка: создайте двоичную переменную, которая сообщает вам, был ли задержан рейс.

/

Practical part

1) How does the distribution of flight times during the day change throughout the year?

2) Compare dep_time, sched_dep_time and dep_delay. Are they consistent? Explain your findings.

3) Compare air_time to the duration between departure and arrival. Explain your findings. (Hint: consider the location of the airport.)

4) How does the average delay time change throughout the day? Which should you use: dep_time or sched_dep_time? Why?

5)Which day of the week is the best day to leave if you want to minimise the probability of delay?

6)What are the similarities between the distribution of diamonds$carat and flights$sched_dep_time?

7)Confirm the hypothesis that early flight departures of 20-30 and 50-60 minutes are caused by early departure of scheduled flights. Hint: create a binary variable that tells you if a flight was delayed.