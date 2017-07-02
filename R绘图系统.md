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

