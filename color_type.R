# colorRamp 返回的对象是0-1的数值
pal <- colorRamp(c("red","blue"))
pal(0) # red
pal(1) # blue
pal(0.5)
pal(seq(0,1,len=10))

# colorRampPalette 返回的是十六进制
pal <- colorRampPalette(c("red","yellow"))
pal(1)
pal(2)
pal(10)

library(RColorBrewer)
brewer.pal.info

cols <- brewer.pal(3,"Greens")
pal <- colorRampPalette(cols)
image(volcano, col = pal(20))

display.brewer.pal(3,"Greens")
