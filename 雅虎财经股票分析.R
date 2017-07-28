# 雅虎财经

install.packages('quantmod')
require(quantmod)
getSymbols("GOOG",src="yahoo",from="2013-01-01", to='2013-04-24') #从雅虎财经获取google的股票数据
chartSeries(GOOG,up.col='red',dn.col='green')  #显示K线图
addMACD() #增加MACD图
