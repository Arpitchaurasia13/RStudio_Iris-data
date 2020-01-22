head(cars)
m <- lm(dist ~ speed, data=cars)
m

summary(m)
anova(m)
residuals(m)[1:10]
plot(cars, col='blue', pch='*', cex=2)
abline(m, col='red', lwd=2)




p <- predict(m, data.frame(speed=1:30))
p

plot(1:30, p, xlab='speed', ylab='distance', type='l', lwd=2)
points(cars)

cars$above40 <- cars$dist > 40
mlog <- glm(above40 ~ speed, data=cars, family='binomial')
mlog

p <- predict(mlog, data.frame(speed=1:30), type='response')
plot(cars$speed, cars$above40)
lines(1:30, p)