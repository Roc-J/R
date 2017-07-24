# 向量####
v <- c(98,78,88)
names(v) <- c("math","java","R")
v 

# 向量也是使用C()函数直接生成，可以直接添加名称属性，可以通过名称属性获取

# 列表####
# 列表是非同质的


# 从列表中移除取值为空置的元素
lst <- list("lwx",NULL,"qjk")
lst

lst[sapply(lst,is.null)] <- NULL
lst


s1 <- c(98,78,97,67,87,56,98,56,76,89)
s2 <- c(97,67,87,59,97,67,87,88)
s3 <- c(78,97,67,87,56,98,56,87,59,97,67,87)
s4 <- c(7,87,56,98,56,87,59,97,67,79)

scores <- list(s1,s2,s3,s4)
names(scores) <- c("S1","S2","S3","S4")


# 组合数
choose(5,3)
choose(50,3)

# 生成组合
com
bn(1:5,3)

combn(c("T1","T2","T3","T4","T5","T6"),4)


# 生成随机数
runif(1)
runif(10)

runif(1,min = -3, max = 3)
rnorm(1)

# 生成可再生的随机数
set.seed(199)
runif(10)

set.seed(199)
runif(10)

# 生成随机样本
# 生成一个从1900年到2017年的年份列表，然后生成一个1000的列表
# sample函数用来生成随机样本，对所有年份进行一个放回取样的抽取，生成1000次
# 随机样本的中位数
years = 1900:2017
median <- numeric(1000)
for (i in 1:1000){
  median[i] <- median(sample(years,replace = TRUE))
}

# 估算中位数的置信区间
ci <- quantile(median, c(0.025, 0.975))
cat("95% confidece interval is (", ci, ")\n")


# 生成随机序列 set没有指定
# sample(set, n, replace = TRUE)

# 跑十次硬币的随机模拟

sample(c("H","T"), 20, replace = TRUE)
# 生成一个20次伯努利实验序列
sample(c(FALSE, TRUE), 20, replace = TRUE)


# 同时可以指定概率，这个厉害了
sample(c(FALSE,TRUE),20, replace = TRUE, prob = c(0.2, 0.8))



# 随机排列向量
sample(1:10)


# 绘制密度函数
x <- seq(from=0, to=6, length.out = 100)
ylim <- c(0,0.6)

par(mfrow = c(2,2))

plot(x, dunif(x, min = 2, max = 4), main = "Uniform",type = 'l',ylim = ylim)
plot(x, dnorm(x, mean = 3, sd = 1), main = "Normal",type = 'l',ylim = ylim)
plot(x, dexp(x, rate = 1/2), main = "Exponential",type = 'l',ylim = ylim)
plot(x, dgamma(x, shape = 2, rate = 1), main = "Gamma",type = 'l',ylim = ylim)


# 创建多组散点图
with(iris, plot(Petal.Length,Petal.Width))

# 绘制
with(iris, plot(Petal.Length,Petal.Width, pch = as.integer(Species)))
     
# 添加图例
f <- factor(iris$Species)
with(iris, plot(Petal.Length,Petal.Width, pch = as.integer(f)))
legend(1.5,2.4, c("setosa","versicolor","virginica"), pch=1:3)

# 
f <- factor(iris$Species)
with(iris, plot(Petal.Length, Petal.Width, pch = as.integer(f)))
legend(1.5, 2.4, as.character(levels(f)),pch = as.integer(f))

# 
f <- factor(iris$Species)
with(iris, plot(Petal.Length, Petal.Width, pch = as.integer(f)))
legend(1.5,2.5,c("Estimate", "Lower conf lim","Upper conf lim"),
       lty=c("solid","dashed","dotted"))



# 绘制散点图的回归线
library(faraway)
data(strongx)
m <- lm(crossx ~ energy, data = strongx)

plot(crossx ~ energy, data = strongx)
abline(m)


# 多变量散点图
head(iris)
plot(iris[,1:4])


# 
data(Cars93,package = "MASS")
coplot(Horsepower ~ MPG.city | Origin, data=Cars93)

# 创建条形图
head(airquality)
heights <- tapply(airquality$Temp,airquality$Month,mean)
heights
barplot(heights)
barplot(heights,
        main = "Mean Temp .by Month",
        names.arg =c("May","Jun","Jul","Aug","Sep"),
        ylab = "Temp(deg.F")

attach(airquality)
head(airquality)
heights <- tapply(Temp,Month,mean)
heights
lower <- tapply(Temp,Month,function(v) t.test(v)$conf.int[1])
lower
upper <- tapply(Temp,Month,function(v) t.test(v) $conf.int[2])
upper

barplot2(heights, plot.ci = TRUE, ci.l = lower, ci.u = upper)

barplot2(heights, plot.ci = TRUE, ci.l = lower, ci.u = upper,
         ylim = c(50,90),xpd = FALSE,
         main = "Mean Temp.By Month",
         names.arg = c("May","Jun","Jul","Aug","Sep"),
         ylab = "Temp(deg.F)")

barplot(c(3,4,5),col=c("red","white","blue"))
rel.hts <- (heights - min(heights))/(max(heights) - min(heights))
rel.hts
grays <- gray(1 - rel.hts)
barplot(heights,
        col = grays,
        ylim = c(50,90), xpd = FALSE,
        main = "Mean Temp .By Month",
        names.arg = c("May","Jun","Jul","Aug","Sep"),
        ylab = "Temp (deg.F)")


pressure
plot(pressure)

# 线的类型、宽度、颜色
plot(pressure, type = 'l', lty = "dashed")
plot(pressure, type = 'l', lwd = 2)


# 对每个因子水平创建箱线图
data(UScereal, package = "MASS")
boxplot(sugars ~ shelf, data = UScereal)
UScereal
boxplot(sugars ~ shelf, data = UScereal,
        main ="Sugar Content by shelf",
        xlab = "Shelf", ylab="Sugar (grams per position) ")

#创建直方图
data(Cars93, package = "MASS")
Cars93

hist(Cars93$MPG.city)
hist(Cars93$MPG.city, 20)
hist(Cars93$MPG.city, 20, main = "City MPG(1993)",xlab="MPG")


# 对直方图添加密度估计
samp <- rgamma(500,2,2)
hist(samp, 20, prob = T)
lines(density(samp))

x = sample(1:100,10)
x
plot(table(x)/length(x), type = "h",lwd = 5, ylab = "Freq")

#创建其他QQ图
data(Cars93, package = "MASS")
qqnorm(log(Cars93$Price),main = "Q-Qplot :price")
qqline(log(Cars93$Price))

# 绘制函数
curve(dnorm, -3.5,+3.5,
      main = "Std. Normal Density")

par(mfrow = c(2,2))
quantile = seq(from =0, to = 1, length.out = 30)
plot(quantile, dbeta(quantile,2,2), type = 'l',main = "First")
plot(quantile, dbeta(quantile,4,2), type = 'l',main = "Second")
plot(quantile, dbeta(quantile,1,1), type = 'l',main = "Thrid")
plot(quantile, dbeta(quantile,0.5,0.5), type = 'l',main = "Fourth")

# create the data frame
BMI <- data.frame(
  gender = c("Male","Male","Female"),
  height = c(152,171.2,165),
  weight = c(81,93,78),
  Age = c(42,38,26)
)
print(BMI)

print(ls())

# 循环输出
v <- c("Hep","Rovk")
count <- 2
repeat{
  print(v)
  count <- count +1
  
  if(count>7) {
    break
  }
}

# create vector objects
city <- c("jinan","beijing","shanghai","taiyuan")
state <- c("shandong","beijing","shanghai","shanxi")
zipcode <- c(54565,34664,24525,24456)

# Combine the three vectors into one data frame
address <- cbind(city,state,zipcode)

# Print a header 
cat("#### ","the first data frame")

print(address)

# create another data frame with similar columns 
new.address <- data.frame(
  city = c("changsha","tianjin"),
  state = c("hunan","tianjin"),
  zipcode = c(33453,67676),
  stringsAsFactors = FALSE
)

# print the header
cat('#### the second data frame')

# print the second data frame
print(new.address)

library(MASS)
merged.Pima <- merge(x = Pima.te, y = Pima.tr,
                    by.x = c("bp","bmi"),
                    by.y = c("bp","bmi"))
s
print(merged.Pima)
nrow(merged.Pima)

print(ships)
library(reshape2)
molten.ships <- melt(ships, id = c("type","year"))
print(molten.ships)

print(seq(12:55))
print(mean(seq(2:9)))
print(sum(1:100))

squre_of_a_number <- function(a) {
  print(a^2)
}

print(squre_of_a_number(9))

# Create a list containing a vector ,a matrix and a list
list_data <- list(c("Jan","Feb","Mar"), matrix(c(1,2,3,6,5,4),nrow = 2),list("green",43.2))
list_data

names(list_data) <- c("1st Quarter","A_matrix","A inner list")

print(list_data[1])

# Elements are arranged sequentially by row.
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)

# Elements are arranged sequentially by column.
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)

# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P)

# Create a vector as input.
data <- c("East","West","East","North","North","East","West","West","West","East","North")

print(data)
print(is.factor(data))

# Apply the factor function.
factor_data <- factor(data)

print(factor_data)
print(is.factor(factor_data))

# Create the vectors for data frame.
height <- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")

# Create the data frame.
input_data <- data.frame(height,weight,gender)
print(input_data)

# Test if the gender column is a factor.
print(is.factor(input_data$gender))

# Print the gender column so see the levels.
print(input_data$gender)

# generate the factor rank
v <- gl(3,4,labels = c("qin","jing","kun"))
print(v)



# create the data frame
emp.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("Rick","Dan","Nichelle","Ryan","Gary"),
  salary = c(4562,4553,4564,6545,3467),
  start_data = as.Date(c("2012-01-01","2013-01-01","2014-01-01","2015-01-01","2016-01-01")),
  stringsAsFactors = FALSE
)

# print the data frame
print(emp.data)

# get the structure of the data frame
print(str(emp.data))

# print the summmary
print(summary(emp.data))


# 绘制条形图 ####
# Create the data for the chart
H <- c(7,12,28,3,41)

# Give the chart file a name
png(file = "barchart.png")

# plot the bar chart
barplot(H)

# save the file
dev.off()

print("#### the 2ed chart")
# create the data for the chart
H <- c(5,26,64,24,77)
# labels
M <- c("Mar","Apr","May","Jun","Jul")

# create a file
png(file = "barplot_month_revenue.png")

# plot the chart
barplot(H,names.arg = M, xlab = "Month", ylab = "Revenue", main = "Revenue chart",col = "blue",border = "red")

# save 
dev.off()

# plot the matrix
# create the input vectors
colors <- c("blue","green","red")
months <- c("Mar","Apr","May","Jun","Jul")
region <- c("East","West","North")

# create the matrix
values <- matrix(c(34,23,55,23,12,43,54,23,12,54,23,121,43,55,23),nrow = 3, ncol = 5,byrow = TRUE)

# give the chart
png(file = "barfile_stacked.png")

# plot 
barplot(values,names.arg = months,xlab = "month",ylab = "revenue",main = "total revenue",col = colors)

# add the legend to the chart
legend("topleft",regions,cex = 1.3,fill = colors)

# save 
dev.off()

# boxplot ####
input <- mtcars[,c('mpg','cyl')]
print(head(input))

# by the cyl to plot the boxplot
# give the chart 
png(file = "boxplot.png")

# plot 
boxplot(mpg ~ cyl, data = mtcars, main = "Mileage Data",xlab = "Number of cylinders", ylab = "Miles per")

dev.off()

# plot chart with 
# file
png(file = "boxplot_with_notch.png")

# plot the chart
boxplot(
  mpg ~ cyl,data = mtcars,
  xlab = "Number of Cylinders",
  ylab = "Miles per Gallon",
  main = "Mileage Data",
  notch = TRUE,
  varwidth = TRUE,
  col = c("green","yellow","purple"),
  names = c("high","medium","Low")
)

# save 
dev.off()

# Create the data for the chart.
v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)
s <- C(10,8,9,11,12)

# Give the chart file a name.
png(file = "line_chart_2_lines.jpg")

# Plot the bar chart.
plot(v,type = "o",col = "red", xlab = "Month", ylab = "Rain fall", 
     main = "Rain fall chart")

lines(t, type = "o", col = "blue")
lines(s, type = "o", col = "green")
# Save the file.
dev.off()


# create data for the graph
x <- c(21,54,34,23)
labels <- c("London","new york","singapore","Numbai")

# file name
png(file = "city_title_colours.png")
 
# plot
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

# save 
dev.off()


# split the pie
# create
x <- c(21,10,56,34)
labels <- c("shangxi","hebei","henan","shandong")

piepercent <- round(100*x/sum(x),1)

# file
png(file = "city_percentage_legends.jpg")

# plot
pie(x, labels = piepercent, main = "city pie chart", col = rainbow(length(x)))

legend("topright", c("shangxi","hebei","henan","shandong"), cex = 0.8, fill = rainbow(length(x)))

# save 
dev.off()


# 3d pie
library(plotrix)

x <- c(21,34,54,23)
lbls <- c("shangxi","hebei","henan","shandong")

png(file = "3d_pie_chart.jpg")

pie3D(x, labels = lbls, explode = 0.1, main ="Pie chart of provices")

dev.off()