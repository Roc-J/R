# 数据框（data frame)
# -存储表格数据（tabular data)
# -视为各元素长度相同的列表
#   * 每个元素代表一列数据
#   * 每个元素的长度代表行数
#   * 元素类型可以不同

# data frame
df <- data.frame(id = c(1,2,3,4), name = c("a","b","c","d"), gender = c(TRUE, TRUE, FALSE,FALSE))

# 查看行数
nrow(df)

# 查看列数
ncol(df)

df2 <- data.frame(id = c(1,2,3,4),score = c(80,86,90,100))

# 将数据框转化为矩阵
data.matrix(df2)

