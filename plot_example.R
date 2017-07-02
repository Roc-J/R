# 柱状图 wind变量是一个数值型变量
hist(airquality$Wind,xlab = "Wind")

# 表示一个变量的情况
boxplot(airquality$Wind, xlab = "Wind", ylab = "Speed(mph)")

# 一个分类变量+一个数值变量  
boxplot(Wind~Month, airquality, xlab = "Month", ylab = "Speed(mph)")