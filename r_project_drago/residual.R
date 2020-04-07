hadCET <- read_table2("hadCET.txt")

colnames(hadCET)
# Notice this is some problem this the header name, so let't rid of the double quotation
names(hadCET) <- c("temp", "year", "month", "dec.year")
colnames(hadCET)
# Now it looks better


op <- par(mfrow=c(2,2), mar=c(4,5,4,0.5)) # mar(bot, left, top, right)
plot(hadCET$dec.year, resid(model1), ylab="Residuals", xlab="dec.year", main="A fifth degree polynomial model") 
abline(0, 0)                  # the horizon
plot(fitted(model1), resid(model1), xlab="fitted values", ylab="residuals", main="Residual Vs fitted values"); abline(h=0)
hist(resid(model1), main="Histogram of residual", xlab="residuals", col="gray")
qqnorm(resid(model1)); qqline(resid(model1))


hadCET <- read_table2("hadCET.txt")
names(hadCET) <- c("temp", "year", "month", "dec.year")
mutate(hadCET, dec.year_shifted = dec.year-1750)

sin.term <- sin(2*pi*hadCET$dec.year)
cos.term <- cos(2*pi*hadCET$dec.year)
dec.year_sq <- hadCET$dec.year^2
dec.year_cu <- hadCET$dec.year^3
dec.year_quadra <- hadCET$dec.year^4
dec.year_penta <- hadCET$dec.year^5


model2 = lm(temp~sin.term + cos.term + dec.year + dec.year_sq + dec.year_cu + dec.year_quadra + dec.year_penta-1, data = hadCET)
# By adding '-1', we are telling R don't include the intercept by default. Otherwise you will get NA for last estimated parameter.
summary(model2)

