# 缺失值（missing value)
# --NA/NaN : NaN属于NA，NA不属于NaN
# --NA 有类型属性: integer NA 
# 
#   character NA 等
#   
# --is.na()/is.nan()
#   Missing value

x <- c(1, NA, 2, NA, 3)
is.na(x)
is.nan(x)

# 获取非缺失值
x[!is.na(x)]

x <- c(1, NaN, 2, NaN, 3)
is.na(x)
is.nan(x)

# na和nan在数据预处理中有重要的作用

x <- c(1,NA,2,NA,3)
y <- c("a","b",NA,"c",NA)

# 获取两个都不是缺失值的
z <- complete.cases(x,y)

library(datasets)

airquality[g,][1:10,]

