library(dplyr)
lab4<-read.csv("C:/Users/hexua/Downloads/sensor.csv")
lab4$day <- substring(lab4$timestamp, first = 8, last = 9)



lab4$time <- substring(lab4$timestamp, first = 45, last =52)



lab4$value<-as.numeric(lab4$value)
sensors_clean <- filter(lab4,value >= 0 & value <= 100,na.rm=TRUE) 

data_summary <- list(
  count_of_valid_readings = nrow(sensors_clean),                  
  minimum_reading = min(sensors_clean$value),                     
  mean_reading = mean(sensors_clean$value),                       
  range_of_readings = range(sensors_clean$value),               
  maximum_reading_site2_sensor = max(sensors_clean$value[sensors_clean$siteid == 2]), 
  total_observations_site1_sensor2 = sum(sensors_clean$siteid == 1 & sensors_clean$sensorid == 2) 
)
hist(sensors_clean$value, 
     main = "the value of sensor Distribution",  
     xlab = "Sensor Values",                      
     ylab = "Frequency",                        
     col = "red",                         
     breaks = 10)
boxplot(value ~ sensorid, data = sensors_clean,
        main = "Comparison of Sensor",   
        xlab = "Sensor ID",                                  
        ylab = "Sensor Value",                              
        col = c("red", "blue", "green"),     
        notch = TRUE,                                       
        notchwidth = 0.5,                                    
        names = c("Sensor 1", "Sensor 2", "Sensor 3"))        

