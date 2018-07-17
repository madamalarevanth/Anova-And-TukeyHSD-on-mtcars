#anova analysis


library(dplyr)

#extracting mtcars data set from dpylr
mtcars<- mtcars

#to view the data 
View(mtcars)

#gives the dimensions of the data set
dim(mtcars)

#gives the names of the variables in the data set
names(mtcars)

#displays top 6 observations of the data set
head(mtcars)

#displays bottom 6 observations of the data set
tail(mtcars)

#displays structure of the variables in the data set
str(mtcars)

#gives the summary of the variables of the data set 
summary(mtcars)

#convert into categorical data (i.e factor type for indep variable)
#indep var must be categorical for anova
mtcars$gear<- as.factor(mtcars$gear)

str(mtcars$gear)

#apply anova test 
mtcars1<- aov(mtcars$mpg ~ as.factor(mtcars$gear))

summary(mtcars1)

#boxplot for mpg and gears
boxplot(mtcars$mpg ~ factor(mtcars$gear),xlab ="gear", ylab ="mpg")

#TukeyHSD test : TukeyHONESTSIGNIFICANT TEST WILL TELL WHICH ONE IS DIFFERENT and WHICH ONE IS SAME
mtcars2<- TukeyHSD(mtcars1)

# this summary will tell which group is statistically different and same
mtcars2 

#the columns with p values less than 0.05 are different 
#as it rejects null hypothesis and gear group 4 and 3 is different as p value is 0.0002088<0.05


#applying anova with mpg and cyl variables
mtcars$cyl<- as.factor(mtcars$cyl)

str(mtcars$cyl)

#apply anova test 
mtcars1<- aov(mtcars$mpg ~ as.factor(mtcars$cyl))

summary(mtcars1)

#boxplot for mpg and cyl
boxplot(mtcars$mpg ~ factor(mtcars$cyl),xlab ="cyl", ylab ="mpg")

#TukeyHSD test : TukeyHONESTSIGNIFICANT TEST WILL TELL WHICH ONE IS DIFFERENT and WHICH ONE IS SAME
mtcars2<- TukeyHSD(mtcars1)

# this summary will tell which group is statistically different and same
mtcars2 

#applying anova with mpg and cyl variables
mtcars$carb<- as.factor(mtcars$carb)

str(mtcars$carb)

#apply anova test 
mtcars1<- aov(mtcars$mpg ~ as.factor(mtcars$carb))

summary(mtcars1)

#boxplot for mpg and cyl
boxplot(mtcars$mpg ~ factor(mtcars$carb),xlab ="carb", ylab ="mpg")

#TukeyHSD test : TukeyHONESTSIGNIFICANT TEST WILL TELL WHICH ONE IS DIFFERENT and WHICH ONE IS SAME
mtcars2<- TukeyHSD(mtcars1)

# this summary will tell which group is statistically different and same
mtcars2 
