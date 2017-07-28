# R绘图

R提供了非常丰富的绘图功能，可以通过命令：demo (graphics) 或者demo(persp)来体验R绘图功能的强大。

## R的绘图三类命令

* 高级绘图命令：在图形设备上产生一个新的图形，可能包含坐标轴，标签，标题等  
* 低级绘图命令：在一个已经存在的图上加上更多的图形元素，如额外的点，线和标签  
* 交互式图形命令：允许交互式地用鼠标在一个已经存在的图上添加图形信息或提取图形信息

### 高级绘图命令

高级图形显示函数可以根据数据显示完整的图形（chart），包括坐标轴，标签、标题、序列等。

图表类型，下面给出R基本环境中支持的图表类型及其对应的绘图函数。

* plot(x)          以x的元素值为纵坐标、以序号为横坐标绘图

* plot(x,y)        x(在x-轴上)与y(在y-轴上)的二元作图

* sunflowerplot(x,y)同上，但是以相似坐标的点作为花朵，其花瓣数目为点的个数

* pie(x)饼图

* boxplot(x)盒形图(“box-and-whiskers”)

* stripchart(x)把x的值画在一条线段上，样本量较小时可作为盒形图的替代

* coplot(x~y|z)关于z的每个数值（或数值区间）绘制x与y的二元图

* interaction.plot(f1, f2, y)如果f1和f2是因子,作y的均值图,以f1的不同值作为x轴, 而f2的不同值对应不同曲线;可以用选项fun指定y的其他的统计量(缺省计算均值,fun=mean)

* matplot(x,y)二元图，其中x的第一列对应y的第一列，x的第二列对应y的第二列，依次类推。

* dotchart(x)如果x是数据框，作Cleveland点图（逐行逐列累加图）

* fourfoldplot(x)用四个四分之一圆显示2X2列联表情况（x必须是dim=c(2,2,k)的数组，或者是dim=c(2,2)的矩阵，如果k=1）

* assocplot(x)Cohen–Friendly图，显示在二维列联表中行、列变量偏离独立性的程度

* mosaicplot(x)列联表的对数线性回归残差的马赛克图

* pairs(x)如果x是矩阵或是数据框，作x的各列之间的二元图

* plot.ts(x)如果x是类"ts"的对象，作x的时间序列曲线，x可以是多元的，但是序列必须有相同的频率和时间

* ts.plot(x)同上，但如果x是多元的，序列可有不同的时间但须有相同的频率

* hist(x)x的频率直方图

* barplot(x)x的值的条形图

* qqnorm(x)正态分位数－分位数图

* qqplot(x,y)y对x的分位数－分位数图

* contour(x,y,z)等高线图（画曲线时用内插补充空白的值）

* filled.contour(x,y,z)同上，等高线之间的区域是彩色的，并且绘制彩色对应的值的图例

* image(x,y,z)同上，但是实际数据大小用不同色彩表示

* persp(x,y,z)同上，但为透视图

* stars(x)如果x是矩阵或者数据框，用星形和线段画出

* symbols(x,y,...)在由x和y给定坐标画符号（圆，正方形，长方形，星，温度计式或者盒形图），符号的类型、大小、颜色等由另外的变量指定

* termplot(mod.obj)回归模型（mod.obj）的（偏）影响图

* heatmap(x)热度图


> 其他的包中可能也会提供额外的图表类型  

* quantmod包提供的K线图:chartSeries()  
* portfolio包提供的tree map（板块层级图）：map.market(id, area, group, color)用矩形面积来表示数值，可用于分析磁盘空间占用  
* lattice包提供的平行坐标图：parallel(data)  

### 绘图参数

很多时候，你可能需要调整图形的显示方式。R的绘图参数几乎可以定制图形的任何显示（如**标题，坐标轴，颜色，字体**等）。

R 拥有一个数目很大的图形参数列表。该列表包括**控制线条样式，颜色，图形排列和文字对齐**等方面的参数。

更改图形参数有两种方式  

* 直接在绘图函数中设置参数，这种方式只影响当前绘图函数，但是不是所有的参数都能够通过这种方式设置  
* 通过par()函数设置，这种方式会影响当前绘图设备上的所有图形。


#### 通过设置参数

```
plot(x,y,type="b",main="main title",sub='sub title',xlab="x axis",ylab='y axis',asp=0.2)
```

#### par()设置来进行绘图demo

```
opar <- par()#备份原来的绘图参数
par(bg="lightyellow", col.axis="blue", mar=c(4, 4, 2.5, 0.25))
plot(x, y, xlab="Ten random values", ylab="Ten other values",
xlim=c(-2, 2), ylim=c(-2, 2), pch=22, col="red", bg="yellow",
bty="l", tcl=-.25, las=1, cex=1.5)
par(opar)#恢复原来的绘图参数
```

### 低级绘图命令

R还可以在现有图形（通过高级绘图命令绘制）的基础上增加一些额外的显示，如标题、绘制坐标轴、在特定的位置增加图形（比如辅助线，拟合线）或文字等。

这些函数在R中称为低级作图命 令(low-level plotting commands)。一些常用的低级图形命令包括：

* scatter.smooth(x, y, …)LOESS(局部加权散点平滑)拟合曲线

* points(x, y)添加点(可以使用选项type=)

* lines(x, y)同上,但是添加线

* text(x, y, labels,…)在(x,y)处添加用labels指定的文字;典型的用法是: 

		plot(x, y, type=”n”); 
		text(x, y, names)

* mtext(text,side=3, line=0,…)在边空添加用text指定的文字,用side指定添加到哪一边(参照 下面的axis());line指定添加的文字距离绘图区域的行数

* segments(x0, y0,x1, y1)从(x0,y0)各点到(x1,y1)各点画线段

* arrows(x0, y0,x1, y1, angle= 30,code=2)同上但加画箭头,如果code=2则在各(x0,y0)处画箭头,如 果code=1则在各(x1,y1)处画箭头,如果code=3则在两端都画箭头; angle控制箭头轴到箭头边的角度

* abline(a,b)绘制斜率为b和截距为a的直线

* abline(h=y)在纵坐标y处画水平线

* abline(v=x)在横坐标x处画垂直线

* abline(lm.obj)画由lm.obj确定的回归线

* rect(x1, y1, x2, y2)绘制长方形,(x1, y1)为左下角,(x2,y2)为右上角

* polygon(x, y)绘制连接各x,y坐标确定的点的多边形

* legend(x, y, legend)在点(x,y)处添加图例,说明内容由legend给定

* title()添加标题,也可添加一个副标题

* axis(side, vect)画坐标轴,side=1时画在下边,side=2时画在左边,side=3时画在上边,side=4时画在右边。可选参数at指定画刻度线的位置坐标

* box()在当前的图上加上边框

* rug(x)在x-轴上用短线画出x数据的位置

* locator(n, type=”n”, …)在用户用鼠标在图上点击n次后返回n次点击的坐标(x, y);并可以在点击处绘制符号(type=”p”时)或连线(type=”l”时),缺省情 况下不画符号或连线

### 交互式绘图命令

有时需要根据用户的想法而不是数据进行绘图，即交互式绘图。R对此有很好的支持，允许用户直接用鼠标在一个图上提取和提交信息。

R中最简单、最常用的函数是locator(n, type)。等待用户用鼠标左键点击n个位置，如果设置了type，还可以根据这n个位置直接进行低级绘图。

```
x <- rnorm(10)
plot(x)
locator(5,"o")
```




## 完整code

```
x <- rnorm(10)
y <- rnorm(10)

plot(x,y)
plot(x,y,type="b",main="main title",sub='sub title',xlab="x axis",ylab='y axis',asp=0.2)

opar <- par()#备份原来的绘图参数

par(bg="lightyellow", col.axis="blue", mar=c(4, 4, 2.5, 0.25))

plot(x, y, xlab="Ten random values", ylab="Ten other values",
     
     xlim=c(-2, 2), ylim=c(-2, 2), pch=22, col="red", bg="yellow",
     
     bty="l", tcl=-.25, las=1, cex=1.5)

par(opar)#恢复原来的绘图参数

opar <- par()#备份绘图参数

par(bg="lightgray", mar=c(2.5, 1.5, 2.5, 0.25))#设置绘图参数

plot(x, y, type="n", xlab="", ylab="", xlim=c(-2, 2),  ylim=c(-2, 2), xaxt="n", yaxt="n")#绘制“空白”图形，设定坐标轴范围

rect(-3, -3, 3, 3, col="cornsilk")#修改绘图区域的颜色

points(x, y, pch=10, col="red", cex=2)#画点

axis(side=1, c(-2, 0, 2), tcl=-0.2, labels=FALSE)#添加坐标轴

axis(side=2, -1:1, tcl=-0.2, labels=FALSE)

title("How to customize a plot with R (ter)",#添加标题
      
      font.main=4, adj=1, cex.main=1)

mtext("Ten random values", side=1, line=1, at=1, cex=0.9, font=3)#绘制坐标轴标签

mtext("Ten other values", line=0.5, at=-1.8, cex=0.9, font=3)

mtext(c(-2, 0, 2), side=1, las=1, at=c(-2, 0, 2), line=0.3,
      
      col="blue", cex=0.9)

mtext(-1:1, side=2, las=1, at=-1:1, line=0.2, col="blue", cex=0.9)

par(opar)#恢复绘图参数
```

















