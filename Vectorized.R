# vectorized 

x <- 1:5
y <- 6:10

x+y
x*y
x/y

x <- matrix(1:4,nrow = 2,ncol = 2)

# rep函数是将第一个参数重复4次
y <- matrix(rep(2,4),nrow = 2,ncol = 2)

x*y
x/y