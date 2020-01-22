countries <- c('China', 'China', 'Japan', 'South Korea', 'Japan')
class(countries)
countries
length(countries)
nchar(countries)
z <- letters
z
girl <- "Mary"
boy <- "John"
paste(girl, "likes", boy)
paste(girl, "likes", boy, sep = " ~ ")
paste(countries, collapse=' -- ')
substr('Hello World', 1, 5)
substr('Hello World', 7, 11)
gsub('l', '!!', 'Hello World')
gsub('Hello', 'Bye bye', 'Hello World')
d <- c('az20', 'az21', 'az22', 'ba30', 'ba31', 'ba32')
i <- grep('b', d)
i
d[i]
grep('2', d)
grep('2$', d)
grep('^b', d)
z <- FALSE
z
class(z)
z <- c(TRUE,TRUE, FALSE)
z
x<- 5
x>3
x == 3
x <=2
y <- TRUE
y+1
as.logical(0)
as.logical(1)
as.logical(2.5)
f1 <- as.factor(countries)
f1
f2 <- c(5:7, 5:7, 5:7)
f2
f2 <- as.factor(f2)
f2
as.integer(f2)
fc2 <- as.character(f2)
fc2
as.integer(fc2)
m <- c(2, NA, 5, 2, NA, 2)
m
d1 <- as.Date('2015-4-11')
d2 <- as.Date('2015-3-11')
class(d1)
d1-d2
as.POSIXlt(d1)
as.POSIXct(d1)
as.Date('1/15/2001',format='%m/%d/%Y')
as.Date('April 26, 2001',format='%B %d, %Y')
as.Date('22JUN01',format='%d%b%y')
matrix(ncol=3, nrow=2)
matrix(1:6, ncol=3, nrow=2)
matrix(1:6, ncol=3, nrow=2, byrow=TRUE)
m <- matrix(1:6, ncol=2, nrow=3)
t(m)
a <- c(1,2,3)
b <- 5:7
m1 <- cbind(a, b)
m1
m2 <- rbind(a, b)
m2
m3 <- cbind(b,b,a)
m <- cbind(m1,m2)
m
nrow(m)
ncol(m)
dim(m)
length(m)
colnames(m)

list(1:3)
e <- list(c(2,5) , 'abc')
e
names(e) <- c('First' ,'last')
e

m <- matrix(1:6, ncol = 3 , nrow = 2)
f <- list(e ,m , 'abc')
f

ID <- as.integer(1:4)
name <- c('Arpit', 'Chinky', 'Nitin','Harshit')
sex <- as.factor('F', 'M', 'M' , 'N')
score <- c(10.2,9,13.5,18)
d <- data.frame(ID, name, sex , score , stringsAsFactors = FALSE)
d
class(d)

length(d)

is.list(d)

names(d)

nrow(d)

ncol(d)

dim(d)

colnames(d)

b <- 10:15
b

b[1]
b[2]
b[2:3]
b[c(2,3)]
b[c(1,3:6)]
b[-2]

b[1] <- 11
b

b[3:6] <- -99
b

b[1:3] <- 2
b
b[3:6] <- c(10,20)
b

m <-  matrix(1:9 , nrow = 3 , ncol = 3, byrow = TRUE)
colnames(m) <- c('a', 'b' , 'c')
m
m[2,2]
m[1,3]
m[1:2,1:2]
m[2,]
m[,2]
m[ ,'b']
m[,c('a', 'c')]
m[2,2]
m[5]
m[,2]
m[,2, drop= FALSE]
m[1,1] <- 5
m
m[3,] <- 10
m

m[,2:3] <-3:1
m
diag(m)
diag(m) <- 0
m
diag(m) <- 5

m <- matrix(1:9 , nrow = 3 ,ncol = 3, byrow = TRUE)
colnames(m) <- c('a' , 'b', 'c')
e <- list(list(1:3) , c( 'a', 'b' , 'c', 'd'), m)
e[2]
e[[2]]

names(e) <- c('Arpit' , 'Chinky' , 'Nitin')
e$Chinky
e[['Chinky']]

d <- data.frame(m)
class(d)

d[,2]
d[2]
d[,'b']
d$b
d[['b']]
d['b']
d[,'b' , drop =  FALSE]

x <- 10:20
b <- x > 15
x
b
x[b]
x <- 10:20
j <- c(7,9,11,13)
j %in% x
which(j %in% x)
match(j,x)
match(x, j)


a <- 1:5
b <- 6:10

d <- a*b
a
b
d

a*3
a+c(1,10)

1:6 + c(0,10)
a == 2
f <- a>2
f
a
b
b > 6 & b < 8
b >9 | a <2
b >=9
a <= 2
b >= 9 | a <= 2
b >= 9 & a <= 2

sqrt(a)
exp(a)
min(a)
max(a)
range(a)
sum(a)
mean(a)
median(a)
prod(a)
sd(a)
?sd
?prod
print(prod(1:7)) == print(gamma(8))
r <- runif(10)
r
?runif
r <- rnorm(10, mean=10, sd=2)
r
?rnorm
?seed
set.seed(12)
runif(3)
runif(4)
runif(5)
m <- matrix(1:6, ncol=3, nrow=2, byrow=TRUE)
m
m*2
m^2
m*1:2
m*m
m %% t(m)
d <- data.frame(id=1:10, name=letters[1:10], value=seq(10,28,2))
d

getwd()
webpage <- readLines("http://rspatial.org/intr/6-files.html", warn=FALSE)
webpage[150:155]


d <- data.frame(id = 1:10 ,
                name = c('Bob', 'Bobby', '???', 'Bob', 'Bab', 'Jim', 'Jim', 'jim', '', 'Jim'),
                score1=c(8, 10, 7, 9, 2, 5, 1, 6, 3, 4),
                score2=c(3,4,5,-999,5,5,-999,2,3,4), stringsAsFactors=FALSE)
d
summary(d)

i <- d$score2 == -999
d$score2[i] <- NA
summary(d)
unique(d$name)
table(d$name)
d$name[d$name %in% c('Bab', 'Bobby')] <- 'Bob'
table(d$name)

first <- substr(d$name, 1, 1)
remainder <- substr(d$name, 2, nchar(d$name))
first <- toupper(first)
name <- paste0(first, remainder)
d$name <- name
table(d$name)
d$name[d$name == '???'] <- NA
table(d$name)
table(d$name, useNA='ifany')
d$name[9]
d$name[d$name == ''] <- NA
table(d$name, useNA='ifany')
table(d[ c('name', 'score2')])
quantile(d$score1)
?quantile
mean(d$score1)
quantile(d$score2)
quantile(d$score2, na.rm=TRUE)
range(d$score2, na.rm=TRUE)
par(mfrow=c(2,2))
plot(d$score1, d$score2)
boxplot(d[, c('score1', 'score2')])
plot(sort(d$score1))
hist(d$score2)
f <- function() {
  return('hello')
}
f
f()
f <- function(name) {
  x <- paste('hello', name)
  return(x)
}
f('Arpit')

f <- function(name) {
  paste('Hello', name)
}  
f('Arpit')

frs <- function(n) {
  s <- sample(letters, n, replace=TRUE)
  r <- paste0(s, collapse='')
  return(r)
}
set.seed(0)
frs(5)
frs(5)

x <- frs(10)
x

sumsquare <- function(a, b) {
  d <- a + b
  dd <- d * d
  return(dd)
}
sumsquare(1,2)
x <- 1:3
y <- 5
sumsquare(x,y)
sumsquare(a=1, b=2)
sumsquare(a=1, d=2)
sumsquare(1:5)
sumsquareD <- function(a=0, b=1) {
  d <- a + b
  dd <- d * d
  return(dd)
}
sumsquareD(1:5, 2)
sumsquareD()
sumsquareD(b=3)
nunique <- function(x) {
  length(unique(x))
}
data <- c('a', 'b', 'a', 'c', 'b')
nunique(data)
m <- matrix(1:15, nrow=5, ncol=3)

apply(m, 1, sum)
apply(m, 2, mean)
rowSums(m)



colnames(m) <- c('v1', 'v2', 'v3')
d <- data.frame(name=c('Yi', 'Yi', 'Yi', 'Er', 'Er'), m, stringsAsFactors=FALSE)
d$v2[1] <- NA
d

tapply(d$v1, d$name, mean)
tapply(d$v1, d$name, max)
tapply(d$v2, d$name, mean)
tapply(d$v2, d$name, mean, na.rm=TRUE)
aggregate(d[, c('v1', 'v2', 'v3')], d[, 'name', drop=FALSE], mean, na.rm=TRUE)
aggregate(d[, c('v1', 'v2', 'v3')], list(d$name), mean, na.rm=TRUE)
names <- list('Antoinette', 'Mary', 'Duncan', 'Obalaya', 'Jojo')
nchar('Jim')
lapply(names, nchar)
sapply(names, nchar)



shortname <- function(name) {
  if (nchar(name) < 5) {
    name <- toupper(name)
    return(name)
  } else {
    name <- substr(name,1,5)
    return(name)
  }
}
sapply(names, shortname)

for (i in 1:5) {
  print('Arpit')
  
}

j <- 0
for (i in 1:3) {
  print(i)
  j <- j + i
}
j
for (i in 1:3) {
  txt <- paste('the square of', i, 'is', i * i)
  print(txt)
}

s <- 0
a <- 1:6
b <- 6:1

res <- vector(length = length(a))
for (i in 1:length(b)) {
  s <- s + a[i]
  res[i] <- a[i] * b[i]
}
s
res


for (i in 1:10) {
  if (i %in% c(1,3,5,7)) {
    next
  }
  if (i > 8) {
    break
  }
  print(i)
}
i <- 0
while (i < 4) {
  print(paste(i, 'and counting ...'))
  i <- i + 1
}

set.seed(1)
i <- 0
while(i < 0.5) {
  i <- runif(1)
  print(i)
}

dd <- read.csv('https://stats.idre.ucla.edu/stat/data/hsb2.csv')
d <- dd[1:4, c(1:2, 8:9)]
d
wvars <- c("write", "math")
x <- reshape(d, varying=wvars, v.names="score", direction = "long")
x

x <- reshape(d, varying=wvars, v.names="score", times=wvars, timevar = "subject", direction = "long")
x

rownames(x) <- NULL
x

w <- reshape(x, idvar=c("id", "female"), timevar = "subject", direction = "wide")
w

cn <- colnames(w)
cn <- gsub("score.", "", cn)
colnames(w) <- cn
w

a <- dd[,1:3]
set.seed(1)
b <- dd[sample(nrow(dd), 100), c(1, 7:10)]
dim(a)
head(a)

table(a$female)
table(a$race)

dim(b)
head(b)

ab <- merge(a,b, by = 'id')
head(ab)

dim(ab)
ab <- merge(a, b, by='id', all.x=TRUE)
dim(ab)


head(ab)

merge(a[1:3,], b[1:3, ], by='id')

merge(a[1:3,], b[1:3, ], by='id', all.x=T)
merge(a[1:3,], b[1:3, ], by='id', all.y=T)
merge(a[1:3,], b[1:3, ], by='id', all=T)


tapply(ab$read, ab$female, mean, na.rm=TRUE)

tapply(ab$read, ab$race, mean, na.rm=TRUE)


x <- sample(10)
x

sort(x)


i <- order(x)
i

x[i]

set.seed(0)
x <- a[sample(nrow(a), 10), ]
x

oid <- order(x$id)
y <- x[oid, ]
y

oid <- order(x$race, x$female, x$id)
x[oid, ]


data(cars)
head(cars)


plot(cars)

plot(cars[,1], cars[,2])
plot(cars[,1], cars[,2], xlab='Speed of car (miles/hr)', ylab='Stopping distance (feet)')
plot(cars, xlab='Speed of car (miles/hr)', ylab='Stopping distances (feet)', pch=20, cex=2, col='red')
