#vector maths 

a <-rnorm(6)
b <- rnorm(5)
c <- a * b
c
X <- rnorm(5)
X
Y <- rnorm( 5, 10, 1)
Y
x <-rnorm(10)
plot(x)

#rnorm numerical distribution
x <-rnorm(10,1)
x
x <-rnorm(100000)
x

#classwork problem by Testing the law of large numbers for N
count <- 0
 for (i in x)
   if (i>-1 & i<1)
     count <- count+1
count

#now we will do ploting for the number 80000 
x <-rnorm(80000)
plot(x)
hist(x)
head(x)
tail(x)
range(x)
summary(x)
boxplot(x)
