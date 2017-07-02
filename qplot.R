library(ggplot2)

qplot(Wind,Temp,data = airquality,color = Month)

# 将月份转变为分量因素  
airquality$Month <- factor(airquality$Month)
qplot(Wind, Temp, data = airquality, color = Month)

qplot(Wind, Temp, data = airquality, shape = Month)

qplot(Wind, Temp, data = airquality, size = Month)

qplot(Wind,Temp,data=airquality,size=I(10),
      xlab = "Wind(mph)",ylab="Temperature",
      main = "Wind vs. Temp")

# 几何客体层
qplot(Wind,Temp,data = airquality,color=Month,
      geom = c("point","smooth"))

qplot(Wind,Temp,data = airquality,color=Month,
      facets = .~Month)

qplot(Wind,Temp,data = airquality,color=Month,
      facets = Month~.)

# 柱状图
qplot(Wind, data = airquality, facets = Month ~.)

# 按照风速的观测值进行显示
qplot(y=Wind, data = airquality)

qplot(Wind, data = airquality, fill = Month)

qplot(Wind,data = airquality, geom = "density", color=Month)
