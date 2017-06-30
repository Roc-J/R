# R语言函数 lapply
# 重要函数的使用
#  * 处理循环
#   -R不仅有for/while循环语句，还有更强大的实现循环的”一句话“函数
#  * 排序
#  * 总结数据信息

# lapply()
# -可以循环处理列表中的每一个元素
# -lapply(参数):lapply(列表，函数/函数名，其他参数)

str(lapply)

x <- list(a=1:10, b=c(11,45,23,41,51))

lapply(x,mean)

x <- 1:4
lapply(x,runif)
lapply(x,runif,min=0,max=100)

x <- list(a=matrix(1:6,2,3), b=matrix(4:7,2,2))
lapply(x,function(m)m[1,])

sapply(x,mean)

# lapply
# -可以循环处理列表中的每一个元素
# -lapply(参数):lapply(列表，函数/函数名，其他参数)
# -总是返回一个列表
# -sapply:简化结果
#   * 结果列表元素长度均为1，返回向量
#   * 结果列表元素长度相同且大于1，返回矩阵

# apply 沿着数组的某一维度处理数据
# -沿着数组的某一维度处理数据
#  * 例如:将函数用于矩阵的行或列
#  * 虽然与for/while循环的效率相似，但是只用一句话就可以完成
# -apply(参数):apply(数组，维度，函数/函数名)

x <- matrix(1:16,4,4)

# 列的平均值
apply(x,2,mean)
# 列的和
apply(x,2,sum)
# 行的和
apply(x,1,sum)
# 行的平均值
apply(x,1,mean)

rowSums(x)
rowMeans(x)
colSums(x)
colMeans(x)


x <- matrix(rnorm(100),10,10)
apply(x,1,quantile,probs=c(0.25,0.75))

x <- array(rnorm(2*3*4),c(2,3,4))
apply(x,c(1,2),mean)
apply(x,c(1,3),mean)
apply(x,c(2,3),mean)


