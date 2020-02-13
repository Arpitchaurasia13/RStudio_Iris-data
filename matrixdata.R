myfirstobject = 5:10
plot(myfirstobject)

set.seed(65)
runif(n = 9, min = 3, max = 6)
set.seed(65)
runif(9, 3, 6)
set.seed(65)
runif(min = 3, max = 6, n = 9)
set.seed(65)
runif(3)
length(lynx)
order(lynx)
which(lynx< 500)
subset(lynx, lynx < 500)
hist(lynx, col=c("yellow", "darkblue"), breaks=7,
     sub="r-tutorials.com", xlab="", ylab="",
     main="Exercise Question\n")
mysepal = iris$Sepal.Length
sum(mysepal);
mean(mysepal)     
median(mysepal)     
min(mysepal);
max(mysepal)
summary(mysepal);
install.packages("dplyr")
library(dplyr)
?arrange
remove.packages("dplyr")
good <- c(123,243,4434,434,34,343443,34)
msft <- c(12,323,23,23,32,32,334)

stocks <- c(good,msft)

stock.matrix <- matrix(stocks,byrow = TRUE, nrow = 3)

mat <- matrix(1:12, byrow = T, nrow = 5)
mat

mat * 2

mat /2

mat ^2

1/mat

mat >15

mat[mat>15]

mat+ mat
mat/mat

mat*mat

mat %*% mat

market <- c(450,323,344,456,469)
goods <- c(233,344,545,343,232)

stocks <- c(market,goods)

share.matrix <- matrix(stocks , byrow = T, nrow = 2)

days <- c('Mon','Tue','Wed','Thu','Fri')
 st.name <- c('market','goods')

colnames(share.matrix)<- days
rownames(share.matrix) <- st.name

print(share.matrix)

colSums(share.matrix)

rowSums(share.matrix)

rowMeans(share.matrix)

FB <- c(112,123,433,343,127)

tech.stockes <- rbind(share.matrix,FB)
tech.stockes
