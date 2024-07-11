print("Время от вылета до прибытия / время в воздухе:")
print(paste(flights$arr_time - flights$dep_time, flights$air_time))