bull_peremennaya <- FALSE

for(i in 1:length(flights)) {
  zero <- flights$dep_time[i] - flights$sched_dep_time[i]
  if(zero != flights$dep_delay[i]) {
    print(paste("Не совпал:", zero, "!==", flights$dep_delay[i]))
    bull_peremennaya <- TRUE
  }else{
    print(paste("Совпал:", zero, "==", flights$dep_delay[i]))
  }
}


if(!bull_peremennaya){
  print("Время задержки совпадает!!!") 
}

print(paste(flights$arr_time - flights$dep_time, flights$air_time))