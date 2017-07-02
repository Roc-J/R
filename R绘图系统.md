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


