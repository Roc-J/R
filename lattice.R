library(lattice)
xyplot(Temp~Ozone, data = airquality)

airquality$Month <- factor(airquality$Month)

xyplot(Temp~Ozone | Month, data = airquality, layout = c(5,1))

q <- xyplot(Temp~Wind ,data = airquality)
print(q)

# 设置种子点的意义生成一样的随机数
set.seed(1)
x <- rnorm(100)
f <- rep(0:1,each=50)

y <- x + f -x*f + rnorm(100,sd=0.5)
f <- factor(f,labels = c("Group1","group2"))

xyplot(y~x | f, layout= c(2,1))

xyplot(y~x | f,panel = function(x,y){
  panel.xyplot(x,y)
  panel.abline(v=mean(x),h=mean(y),lty = 2)
  panel.lmline(x,y,col="red")
})