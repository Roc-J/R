# R语言学习 #

author：秦景坤
date：2017-06-25

## R语言的优势 ##

* R语言是一款开源的软件  
* R语言可以运行在多种平台上  
* R语言可以轻松地从各种类型的数据源导入导出数据  
* R语言内置了多种统计及数学分析功能  
* R语言拥有顶尖的制图功能


## R语言缺点 ##

* R语言速度略慢   
* R包比较混乱  

## 软件安装 ##

R语言安装：[https://cran.r-project.org/mirrors.html ](https://cran.r-project.org/mirrors.html )

执行命令快捷键：Ctrl + R  
清除控制台内容的快捷键： Ctrl + L

Rstudio的安装： [https://www.rstudio.com/products/rstudio/download2/](https://www.rstudio.com/products/rstudio/download2/)

Rattle：可视化数据挖掘工具  
Rattle是使用RGtk2包提供的Gnome图形用户界面  
Rattle的安装： 

	install.packages("RGtk2")
	install.packages("rattle")

即可完成Rattle的安装  
通过library函数载入这个包，并通过rattle()命令调出Rattle界面。

## 新手学习 ##

R语言的标准赋值符号是<-，也可以使用=。  

	> a <- 1:10
	> a
	 [1]  1  2  3  4  5  6  7  8  9 10
	> 1+1
	[1] 2
	> 1+
	+ 1
	[1] 2
	> A
	Error: object 'A' not found

cor()函数是来求相关系数的

	> cor(iris[,1:4])
             Sepal.Length Sepal.Width Petal.Length Petal.Width
	Sepal.Length    1.0000000  -0.1175698    0.8717538   0.8179411
	Sepal.Width    -0.1175698   1.0000000   -0.4284401  -0.3661259
	Petal.Length    0.8717538  -0.4284401    1.0000000   0.9628654
	Petal.Width     0.8179411  -0.3661259    0.9628654   1.0000000
	> Cor(iris[,1:4])
	Error in Cor(iris[, 1:4]) : could not find function "Cor"


## 获得帮助、工作空间、包 ##

获得帮助：

	?median
	??median   

工作空间：就是当前R的工作环境














