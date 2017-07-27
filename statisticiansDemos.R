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

# Get the data points in form of a R vector.
rainfall <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)

# Convert it to a time series object.
rainfall.timeseries <- ts(rainfall,start = c(2012,1),frequency = 12)

# Print the timeseries data.
print(rainfall.timeseries)

# Give the chart file a name.
png(file = "rainfall.png")

# Plot a graph of the time series.
plot(rainfall.timeseries)

# Save the file.
dev.off()

install.packages("party")


library(party)
print(head(readingSkills))

# create the data set
input.dat <- readingSkills[c(1:105),]

# give the chart file a name
png(file = "decision_tree.png")

# create the tree
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score,
  data = input.dat
)

plot(output.tree)

dev.off()

install.packages("randomForest")
# Load the party package. It will automatically load other required packages.
library(party)
library(randomForest)

# Create the forest.
output.forest <- randomForest(nativeSpeaker ~ age + shoeSize + score, 
                              data = readingSkills)

# View the forest results.
print(output.forest) 

# Importance of each predictor.
print(importance(output.forest,type = 2)) 


install.packages("survival")


# Load the library.
library("survival")

# Print first few rows.
print(head(pbc))

# Load the library.
library("MASS")

# Create a data frame from the main data set.
car.data <- data.frame(Cars93$AirBags, Cars93$Type)

# Create a table with the needed variables.
car.data = table(Cars93$AirBags, Cars93$Type) 
print(car.data)

# Perform the Chi-Square test.
print(chisq.test(car.data))