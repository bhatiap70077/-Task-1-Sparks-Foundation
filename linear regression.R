#Setting working directory
setwd('C:/Users/bhati/Desktop')
getwd()
class <- read.csv('book.csv')

#Getting the view of the csv(data) file
View(class)

#displaying the internal structure of dataset
str(class)


summary(class)


#We use lm() command for linear regression
results = lm(formula = Scores ~ Hours, data = class)
results

summary(results)

#computes the correlation coefficient between paired samples
cor(class$Scores, class$Hours)

#for prediction we use predict() command
testset <- data.frame( Hours =  c (9.25))
y_pred = predict(results, newdata = testset, interval = "confidence")
y_pred

#for visualizing the regression graphically
plot(class, main = 'Scores VS Hours', col = 'red')
abline(results,lwd=3, col = 'green')


