library(ggplot2)
ggplot(airquality,aes(Wind,Temp)) + 
  geom_point(aes(color=factor(Month)),alpha=0.4,size=5)

ggplot(airquality,aes(Wind,Temp)) +
  geom_point() +
  stat_smooth()


ggplot(airquality, aes(Wind,Temp)) + 
  stat_smooth(method = "lm",se = FALSE)


ggplot(airquality, aes(Wind,Temp)) + 
  stat_smooth(method = "lm",se = FALSE,
              aes(col=factor(Month)))

ggplot(airquality,aes(Wind,Temp,col= factor(Month))) +
  geom_point() +
  stat_smooth(method = "lm",se = FALSE,aes(group=1)) +
  stat_smooth(method = "lm",se = FALSE)


library(RColorBrewer)
myColors <- c(brewer.pal(5,"Dark2"),"black")
display.brewer.pal(5,"Dark2")

ggplot(airquality,aes(Wind,Temp,col= factor(Month))) +
  geom_point() +
  stat_smooth(method = "lm",se = FALSE)+
  scale_color_manual("Month",values = myColors)+
  facet_grid(.~Month) + 
  theme_classic()




