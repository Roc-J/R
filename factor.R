# 数据结构
# factor 
# 分类数据/ 无序 VS 有序

# 整数向量+标签（label)（优于整数向量）
# Male/Female vs 1/2



# factor 中用levels来设定基线水平
# x中用factor构建
x <- factor(c("female","female","male","male","female"))

y <- factor(c("female","female","male","male","female"),levels = c("male","female"))

# 想对当前的因子有一个了解
table(x)

unclass(x)
class(unclass(x))