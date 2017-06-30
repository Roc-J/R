# 排序
# -sort:对向量进行排序；返回排好序的内容
# -order:返回排好序的内容的下标/多个排序标准

# Sort and Order

x <- data.frame(v1=1:5,v2=c(10,7,9,6,8),v3=11:15,v4=c(1,1,2,2,1))

sort(x$v2)

sort(x$v2,decreasing = TRUE)

order(x$v2)

x[order(x$v4,x$v2),]