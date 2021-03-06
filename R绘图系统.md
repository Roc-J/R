# R的绘图系统 #

## R的三大绘图系统 ##
* 基本的绘图系统（Base Plotting System)  
	* 自由发挥的空间：绘图始于空白帆布  
		* 需要事先计划；直观地实时反映绘图和分析数据的逻辑  	
	* 两步 = 图 + 修饰/添加 = 执行一系列函数  
	* 适于绘制2D图  

* Lattice绘图系统（Lattice Plotting System)
	* 绘图 = 使用一次函数调用（一次成图） 
	* 特别适用于观测变量间的交互：在变量z的不同水平，变量y如何随变量x变化  

* ggplot2绘图系统（ggplot2 Plotting System)   
	* The grammar of Graphics
		* 图：动词、名词、形容词等  
		* 数据映射到几何客体（points/lines/bars）的美学属性（颜色/形状/大小）
	* 基本绘图系统 + Lattice绘图系统  
		* 自动处理标题/文字说明/空间等，但也允许通过添加注释进行修改


## 基本绘图系统 ##
* 绘图函数(graphics包)
	* plot
	* hist 柱状图
	* boxplot 箱图 
	* points 点
	* lines 线
	* text 在固定位置添加文字
	* title 给图命名
	* axis 添加坐标轴
	* 调用函数会启用一个图形设备（如果没有正在运行的图形设备）并设备上绘图  
		* 基本绘图系统 + 屏幕设备


### plot ###
-plot(x,y,...)  
-重要的参数  
	* xlab/ylab 坐标轴  
	* lwd 画线的宽度  
	* lty 画线的类型  
	* pch 画点的 类型  
	* col 颜色操作  
	* 其他   ?par  

par()  
 -用于设置全局参数（作用于R中的所有plot绘图）
 -bg 背景颜色  
 -mar 作图和边界的边距  
 -las 
 -mfrow / mfcol 
 -这些参数可以在每次plot之前进行修改  

## Lattice绘图系统 ##
* 绘图函数（lattice包）
	* xyplot 适合画散点图
	* bwplot  
	* histogram  柱状图
	* stripplot  
	* dotplot  点图，差异
	* splom  
	* levelplot  
	* contourplot  
	* 格式:xyplot(y~x | f*g ,data) y,x 是因变量和自变量，f*g是分类变量  
	* panel函数，用于控制每个面板内的绘图  
* grid包  
	* 实现了独立于base的绘图系统  
	* lattice包是基于grid创建的，很少直接从grid包调用函数   


* lattice与Base的重要区别
	* Base绘图函数直接在图形设备上绘图  
	* lattice绘图函数返回trellis类对象  
		* 打印函数真正执行了在设备上绘图  
		* 命令执行时，trellis类对象会被自动打印，所以看起来就像是lattice函数直接完成了绘图  
	
## ggplot2绘图系统 ##

* 层（Layer)  
	* data 感兴趣的变量(data frame)  
	* Aesthetics x-axis/y-axis/color/fill/size/labels/alpha/shape/linear width/linear type   美学属性相关
	* Geometries point/line/histogram/bar/boxplot  几何客体层
	* Facets 最基本的层   columns /rows 
	* statistics 统计层 binning/smoothing/descriptive/inferential
	* Coordinates 坐标系cartesian/fixed / polar /limits
	* themes 主题

* 绘图函数  
	* qplot()
		* 类似于Base系统的plot()，参数包含aesthetics/geom/facet...  
		* 隐藏了绘图实现的细节，灵活性欠佳  
	* ggplot()
		* 是核心，可以实现qplot()无法实现的功能  
		* 调用ggplot()本身并不能实现绘图，要在其基础上添加层（如geom_point())才可以


## R color ##
* grDevice包  
	* colorRamp() & colorRampPalette()
	* 颜色名字可使用colors()获取

* RColorBrewer包
	* 三类调色板：sequential/diverging/qualitative  
	* 调色板信息可与colorRamp/colorRampPalette结合使用  


## 绘图思考 ##
* 在哪里绘图（屏幕？文件？）
* 如何使用图（屏幕呈现？网页呈现？文章用图？）  
* 用于绘图的数据量的大小？（向量格式 vs 位图）
* 是否需要动态调整图的大小？（向量格式 vs 位图） 
* 用哪个绘图系统(Base /lattice /ggplot2）？一般三者不混用

