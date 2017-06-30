# summarize data

head(airquality,10)
tail(airquality)

summary(airquality)
str(airquality)

table(airquality$Month)
table(airquality$Ozone,useNA = "ifany")

table(airquality$Month,airquality$Day)

any(is.na(airquality$Ozone))
sum(is.na(airquality$Ozone))

all(airquality$Month<12)

titanic <- as.data.frame(Titanic)
head(titanic)

dim(titanic)
summary(titanic)

x <- xtabs(Freq ~ Class+ Age, data = titanic)

ftable(x)


object.size(airquality)

print(object.size(airquality),units = "kb")