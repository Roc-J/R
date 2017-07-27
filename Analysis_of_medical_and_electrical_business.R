library(xlsx)
workbook <- 'F:/Github/R/goods.xls'

mydataframe <- read.xlsx(workbook,1,encoding = "UTF-8")
# View(mydataframe)
# 剔除不规则记录后，先统计分析以下七个字段
usedata <- as.data.frame(mydataframe)[26:844,]

# 分析价格
price <- usedata$Price
price <- as.character(price)
for(i in 1:length(price)){
  if(grepl("-",price[i])){
    charac <- unlist(strsplit(as.character(price[i]),split = '-'))
    price[i] <- charac[1]
  }
}
price <- as.numeric(price)
summary(price)
boxplot(price,ylab = "price",col = "green", main = "Price_goods_charts")

# 分析促销价
saleprice <- usedata$Saleprice
print(saleprice)
new_saleprice <- na.omit(saleprice)

# 分析服务
service <- usedata$Service

# 分析月销售
sales <- as.data.frame(usedata$Sales)
# sales <- as.numeric(usedata$Sales)

# 分析评论数
reviews <- as.data.frame(usedata$Reviews)
# reviews <- as.numeric(usedata$Reviews)

# 分析收藏数
collection <- as.character(usedata$Collection)
for(i in 1:length(collection)){
  if(grepl("人",collection[i])){
    charac <- unlist(strsplit(as.character(collection[i]),split = '人'))
    collection[i] <- substring(charac[1],2)
  } else {
    collection[i] <- substring(collection[i],2)
  }
}
collection <- as.data.frame(collection)
#collection <- as.numeric(collection)

# 线性模型
input <- usedata[,c("Sales","Reviews")]
# input <- as.data.frame(input)
input

goods_model <- lm(Sales~Reviews, data = input)
print(goods_model)


# 分析品牌
Brand <- usedata$Brand
Brand_static <- table(Brand)
Brand_static
  # 基本绘图
plot(Brand_static)
  # 条形图
barplot(Brand_static)

library(plotrix)
pie(Brand_static)

dataframe <- as.data.frame(sort(prop.table(Brand_static)))
label_brand <- c(as.character(tail(dataframe$Brand)),"其他")
y <- c(tail(dataframe$Freq))
x <- c(tail(dataframe$Freq),1-sum(y))
xpercent <- round(100*x/1,1)
xpercent
pie3D(xpercent, labels = label_brand,main = "Brand_pie_chart")

# 分析剂型
cate <- factor(usedata$DosageForm)
cate <- table(cate)
plot(cate, main = "不同药剂的数量统计", xlab = "药剂的种类", ylab = "数量")

barplot(cate,main = "不同药剂的数量统计", xlab = "药剂的种类", ylab = "数量")
pie(cate)

