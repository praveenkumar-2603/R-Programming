data(airquality)

monthly_avg <- aggregate(
  cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
  data=airquality,
  FUN=mean,
  na.rm=TRUE
)

print(monthly_avg)