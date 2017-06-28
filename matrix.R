# matrix && array
# 矩阵可以看成是向量+维度属性(整数向量:nrow,ncol)

# 创建矩阵
# matrix(): 先列后行
# vector() + dim()
# cbind() 列组合 rbind() 行组合
# attributes() 属性
x <- matrix(1:6, nrow = 3, ncol = 2)

dim(x)

attributes(x)

y <- 1:6

dim(y) <- c(2,3)

y2 <- matrix(1:6, nrow = 2, ncol = 3)

rbind(y,y2)

cbind(y,y2)