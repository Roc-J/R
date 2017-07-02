# 柱状图 wind变量是一个数值型变量
hist(airquality$Wind,xlab = "Wind")

# 表示一个变量的情况
boxplot(airquality$Wind, xlab = "Wind", ylab = "Speed(mph)")

# 一个分类变量+一个数值变量  
boxplot(Wind~Month, airquality, xlab = "Month", ylab = "Speed(mph)")

# 适合画散点图
plot(airquality$Wind, airquality$Temp)

with(airquality, plot(Wind, Temp, main = "Wind and Temp in NYC"))
title(main = "Wind and Temp in NYC")

# type = n 的含义
with(airquality, plot(Wind, Temp, main = "Wind and Temp in NYC"
                      ,type = "n"))

with(subset(airquality, Month == 9), points(Wind, Temp, col = "red"))

with(subset(airquality,Month == 5),points(Wind,Temp,col="blue"))

with(subset(airquality,Month %in% c(6,7,8)),points(Wind,Temp,col="black"))

# 拟合模型，线性模式是lm ,Temp~Wind 横纵坐标的变量
fit <- lm(Temp ~ Wind, airquality)
abline(fit, lwd = 2)

legend("topright",pch = 1,
       col = c("red","blue","black"),
       legend = c("Sep","May","Other"))

# 全局参数  
par("bg")
par("col")
par("mar") # (bottom,left,top,right)
par("mfrow")
par("mfcol")

# 将面板划分成一行两列
par(mfrow = c(1,2))
hist(airquality$Temp)
hist(airquality$Wind)
par(mfrow = c(1,1))
# 设置后对全局作用
boxplot(airquality$Temp)

par(mfcol = c(2,1))
hist(airquality$Wind)
hist(airquality$Temp)