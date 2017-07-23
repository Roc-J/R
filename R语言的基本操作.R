# R语言的基本操作 ####

# 1. 脚本编辑器与图形输出设备####
hist(rnorm(1000,0,1),col = 'skyblue')

# 2.得到工作目录####
getwd()

# 3.程序包的安装与加载####
install.packages('maps')

library('maps')

map()

# 自定义函数 ####
myfunc_cv <- function(x){
  cv <- sd(x)/mean(x)
  return(cv)
}


# 数据框dataframe ####

## 数据框就是一个数据表格，一行表示一个记录，一列表示一个变量
x1 <- c(1,2,3,4,5,6,7,8,9)
x2 <- c(10,11,12,13,14,15,16,17,18)

x <- data.frame(x1,x2)
x

x <- data.frame('重量'=x1,'运费' = x2)
x
x$'费率' <- x$'运费'/x$'重量'

names(x)
str(x)

### 3.数据导入与导出 ####
# 3.1 先把R内置的CO2数据集导出，然后再练习导入操作 ####

write.table(CO2,file = "二氧化碳.txt")
write.csv(CO2,file = "二氧化碳.csv")

# 3.2 导入逗号分隔符的文本文件 ####
read.table(file = "二氧化碳.txt", header = TRUE)

# 最好指定一个名称#
carbon <- read.table(file = "二氧化碳.txt", header = TRUE)

# 5 绘图工具 ####
# 5.1 基本绘图工具plot() ####
View(cars)
help(cars)
head(cars)
tail(cars)

plot(cars)

plot(cars$speed,cars$dist)

plot(cars$dist, cars$speed)

# 5.2 为了方便将两幅图放一起
 windows()
 
 par(mfrow = c(2,2))
 plot(cars$speed, cars$dist)
 plot(cars$dist, cars$speed)
 
# 5.3 函数的参数
 plot(cars$dist~cars$speed,
      main = "刹车距离与车速之间的关系",
      xlab = "Speed (miles per hour)",
      ylab = "Distance travelled (miles)",
      xlim = c(0,30),
      ylim = c(0,140),
      xaxs = "i",
      yaxs = "i",
      col = "red",
      pch = 19)