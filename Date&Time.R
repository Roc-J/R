# Date and Time
# 获取当前日期
# -日期 Date   
#  *距离1970-01-01的天数/date()/Sys.Date()
#  *weekdays() /months() /quarters()

x <- date()

# 获取系统时间

x2 <- Sys.Date()

# 将输入的一个字符串转为date类型,用-连接，日月2位表示
x3 <- as.Date("2015-01-01")

weekdays(x3)
months(x3)
quarters(x3) # 季度

julian(x3)

x4 <- as.Date("2016-01-01")

x4 - x3 
as.numeric(x4-x3)

# 时间方面
# 时间：POSIXct / POSIXlt
#   * 距离1970-01-01的秒数/Sys.time()
#   * POSIXct:整数，常用于存入数据框
#   * POXISlt:列表，还包括星期、年、月、日等信息
 
# Time 

x <- Sys.time()
p <- as.POSIXlt(x)

names(unclass(p))

p$sec
as.POSIXct(p)


as.Date("2015-01-01")

p <- "Jan 1, 2017 22:36"

strptime(p, "%B %d, %Y %H:%M")

strptime("一月 19, 2017 11:59", "%B %d, %Y %H:%M") 