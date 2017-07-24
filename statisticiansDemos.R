# linear regression
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y~x)

print(relation)

plot(y~x)

print(summary(relation))


a <- data.frame(x = 179)

result <- predict(relation,a)
print(result)

# file
png(file = "linearregression.png")

# plot 
plot(y,x,col="blue",main = "Height & Weight Regression", abline(lm(x~y),cex = 1.3,pch = 16 ,xlab = "Weight in kg",
                                                                ylab = "Height in cm"))

dev.off()

head(mtcars)


# Multiple regression 
# use the dataset "mtcars", including: 每加仑里程(mpg),气缸排量(disp),马力(hp),汽车重量("wt")
input <- mtcars[,c("mpg","disp","hp","wt")]
print(head(input))

# create the relationship model 
model <- lm(mpg ~ disp+hp+wt,data = input)

# show the model
print(model)

# Get the intercept and cofficients as vector elements
cat("# # # # the coefficient values ###")

a <- coef(model)[1]
print(a)



# logical regression
input <- mtcars[,c("am","cyl","hp","wt")]
am.data <- glm(formula = am ~ cyl+hp+wt, data = input, family = binomial)

print(summary(am.data))