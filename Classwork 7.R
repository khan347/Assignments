# classwork 7 


install.packages("rpart.plot") 

library("rpart")
library("rpart.plot")

# Read the data
banktrain  <- read.csv(file.choose()) 
summary(banktrain)


# Make a  decision tree 
fit <- rpart(subscribed ~ job + marital + education + default + housing + loan + contact + poutcome, 
             method="class", 
             data=banktrain,
             control=rpart.control(minsplit=1),
             parms=list(split='information'))


# Plot
rpart.plot(fit, type=4, extra=2, clip.right.labs=FALSE, varlen=0, faclen=3)


fit <- rpart(subscribed ~ job + marital + education + default + housing + loan + contact + poutcome, 
             method="class", 
             data=banktrain,
             control=rpart.control(minsplit=1),
             parms=list(split='information'))

# Plot the tree
rpart.plot(fit, type=4, extra=2, clip.right.labs=FALSE, varlen=0, faclen=3)


# include a numeric variable "duration" into the model
fit <- rpart(subscribed ~ job + marital + education + default + housing + loan + contact + duration + poutcome, 
             method="class", 
             data=banktrain,
             control=rpart.control(minsplit=1),
             parms=list(split='information'))
summary(fit)

# Plot the tree
rpart.plot(fit, type=4, extra=2, clip.right.labs=FALSE, varlen=0, faclen=3)

# Predict
newdata <- data.frame(job="retired", 
                      marital="married", 
                      education="secondary",
                      default="no",
                      housing="yes",
                      loan="no",
                      contact = "cellular",
                      duration = 598,
                      poutcome="unknown")
newdata
predict(fit,newdata=newdata,type=c("class"))





#Manual Naive Bayes 



banktrain <- read.csv(file.choose()) 
drops<-c("balance", "day", "campaign", "pdays", "previous", "month")
banktrain <- banktrain [,!(names(banktrain) %in% drops)]
summary(banktrain)




# conditional probabilities

maritalCounts <- table(banktrain[,c("subscribed", "marital")])
maritalCounts 
rowSums(maritalCounts)
maritalCounts <- maritalCounts/rowSums(maritalCounts)
maritalCounts

maritalCounts["yes","divorced"]

jobCounts <- table(banktrain[,c("subscribed", "job")])
jobCounts <- jobCounts/rowSums(jobCounts)
jobCounts

educationCounts <- table(banktrain[,c("subscribed", "education")])
educationCounts <- educationCounts/rowSums(educationCounts)
educationCounts

defaultCounts <- table(banktrain[,c("subscribed", "default")])
defaultCounts <- defaultCounts/rowSums(defaultCounts)
defaultCounts

housingCounts <- table(banktrain[,c("subscribed", "housing")])
housingCounts <- housingCounts/rowSums(housingCounts)
housingCounts

loanCounts <- table(banktrain[,c("subscribed", "loan")])
loanCounts <- loanCounts/rowSums(loanCounts)
loanCounts

contactCounts <- table(banktrain[,c("subscribed", "contact")])
contactCounts <- contactCounts/rowSums(contactCounts)
contactCounts

poutcomeCounts <- table(banktrain[,c("subscribed", "poutcome")])
poutcomeCounts <- poutcomeCounts/rowSums(poutcomeCounts)
poutcomeCounts





install.packages("e1071") 
library(e1071) 

sample <- read.csv(file.choose()) 
print(sample)


# define the data frames for the NB classifier
traindata <- as.data.frame(sample[1:14,])
testdata <- as.data.frame(sample[15,])
traindata
testdata


model <- naiveBayes(Enrolls ~ Age+Income+JobSatisfaction+Desire,
                    traindata)

# display model
model

# predict with testdata
results <- predict (model,testdata)
# display results
results