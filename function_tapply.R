# tapply
#   -对向量的子集进行操作
#   -tapply(参数):tapply(向量，因子/因子列表，函数/函数名)
x <- c(rnorm(5),runif(5),rnorm(5,1))
f <- gl(3,5)

tapply(x,f,mean)
tapply(x,f,mean,simplify = FALSE)

# split 
# -根据因子或因子列表将向量或其他对象分组
# -通常与lapply一起使用
# -split(参数):split(向量/列表/数据框，因子/因子列表)

x <- c(rname(5),runif(5),rnorm(5,1))
f <- gl(3,5)

split(x,f)

lapply(split(x,f),mean)

head(airquality)
s <- split(airquality,airquality$Month)


table(airquality$Month)

lapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")]))

sapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")],na.rm = TRUE))