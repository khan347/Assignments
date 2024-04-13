x=10
count=0
if( x>= -1 & x <=1){count <- count+1}else {count <- count-1}
count
i=4
for (i in 1:5)
  {print("Hello R")}
for (m in 5:10)
print(m)

for (z in 1:20)
{ print(sqrt(z))}
print(z)

mySecondVector <- c( “I“, “am”, “Sam”)
mySecondVectortypeof(mySecondVector)



C <- seq(5, -5, by=-2)
C

D <- seq(1,10, length=20)
D

E <- seq(3,-5, lenght=-2)
E

A <- rep('Hello', 5)
A

C <- rep(1:5,4)
C

D1 <- rep(c('A','B','C'), 3)
D1

D2 <- rep( c("A","B","C"), each=3)
D2

D3 <- rep( c("A","B","C"), c(2,1,3) )
D3

T <- c("Hello", 3, 67L, 6.8)
typeof(T)
T

w <- c ("a", "b", "c", "d","e")
w[c(-3:-5)]

X <- c( 1, 2, 3)
Y <- c( 4, 5 , 6 )
Z <- X + Y
X
Y
Z

X <- c( 1, 2, 3)
Y <- c( 4, 5 , 6 )
Z <- X * Y
X
Y
Z

X <- c( 34,56,22,11,65,45)
Y <- prod(X)
Y

A <- c(5,-2,51,42,-76,42)
B <- sort(c("A", -1) 
A

Tax <- c(32,56,44,76,89,24)
for (i in 1:6)
  if (Tax[i] < 50)
    print(i)

for (i in Tax)
  if (i <50)
     print(i)


# Define temperatures in Fahrenheit
temp <- c(45, 77, 20, 19, 101, 120, 212)

# Convert temperatures to Celsius
X <- (temp - 32) * 0.55
X

# Define temperatures in Celsius
Z <- c(27.4, 59.4, 2.4, 1.4, 83.4, 102.4, 194.4)

# Find the minimum temperature
M <- min(Z)
M




