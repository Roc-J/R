# 新手学习
# 创建数据对象a,b
a <- 1:10
b <- 10:1
# 创建模型对象fit

fit <- lm(Sepal.Length~Sepal.Width, data = iris)

# 创建图形对象q,p

library(ggplot2)

q <- qplot(mpg,wt,data = mtcars)

library(rCharts)

names(iris) = gsub('\\.','',names(iris))

p <- rPlot(SepalLength ~ SepalWidth | Species, data = iris, type='point',color='Species')

ls()