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