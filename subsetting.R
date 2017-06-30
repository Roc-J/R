# 构建子集（subsetting）
# 原始数据（raw datasets) -> 预处理后的数据（clean dataset)
# 
# 基本方法
# -[]:提取一个或多个类型相同的元素
# -[[]]:从列表或数据框中提取元素
# -$:按名字从列表或数据框中提取元素

x <- data.frame(v1=1:5,v2=6:10,v3=11:15)
x$v3[c(2,4)] <- NA

# 列表的子集
# subsetting List

x <- list(id=1:4,height=170,gender="male")
x[1]
x["id"]

x[[1]]
x[["id"]]
x$id

x[c(1,3)]

y <- "id"
x[["id"]]
x[[y]]

x$id
x$y
x$height

# subsetting nested elements of a list

x <- list(a=list(1,2,3,4),b=c("Monday","Tuesday"))

x[[1]]

x[[1]][[2]]

x[[1]][2]

x[[c(1,3)]]
x[[c(2,2)]]

# partial matching

l <- list(asdfghj = 1:10)
l$asdfghj
l$a

l[["a"]]
l[["a",exact = FALSE]]

x <- list(asghsrt = 1:10, b = 1:2, aaa = 3:5)
x$a
x[["a", exact = FALSE]]
x$as