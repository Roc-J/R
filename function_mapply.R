# mapply
# -lapply的多元版本
# -mapply(参数):mapply(函数/函数名，数据，函数相关的参数)

list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))

mapply(rep,1:4,4:1)

# mean 均值 std 标准差
s <- function(n, mean, std){
  rnorm(n,mean,std)
}

s(4,0,1)

mapply(s, 1:5,5:1,3)

list(s(1,5,2),s(2,4,2),s(3,3,2),s(4,2,2),s(5,1,2))
