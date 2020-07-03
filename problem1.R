#第2步运行代码
#方差分析总和
#https://jingyan.baidu.com/article/4b07be3c4e314548b380f3a5.html
#
anova.tab <- function(fm) {
    tab <- summary(fm)
    k <- length(tab[[1]]) - 2
    temp <- c(sum(tab[[1]][, 1]), sum(tab[[1]][,2]), rep(NA, k))
    tab[[1]]["Total",] <- temp
    tab
}

#######对第15组红白葡萄酒分析
#合并向量
response_x1 <- c(x1r[15,], x2r[15,])
xvar1 <- factor(c(rep(1, 10), rep(2, 10)))
fit1 <- aov(response_x1 ~ xvar1)
#summary(fit1)
anova.tab(fit1)

response_x2 <- c(x1b[15,], x2b[15,])
xvar2 <- factor(c(rep(1, 10), rep(2, 10)))
fit2 <- aov(response_x2 ~ xvar2)
#summary(fit2)
anova.tab(fit2)

#绘制各组均值以及置信区间
library(gplots)
plotmeans(response_x1 ~ xvar1, xlab = "Variety",
          ylab = "Response", main = "Mean Plot 95% CI")
plotmeans(response_x2 ~ xvar2, xlab = "Variety",
          ylab = "Response", main = "Mean Plot 95% CI")

#######对全部红白葡萄酒分析
##对两组的红葡萄酒方差分析

response_x3 <- c(colMeans(x1r), colMeans(x2r))
xvar3 <- factor(c(rep(1, 10), rep(2, 10)))
fit3 <- aov(response_x3 ~ xvar3)
#summary(fit1)
anova.tab(fit3)
plotmeans(response_x3 ~ xvar3, xlab = "Variety",
          ylab = "Response", main = "Mean Plot 95% CI")

##对两组的白葡萄酒方差分析

response_x4 <- c(colMeans(x1b), colMeans(x2b))
xvar4 <- factor(c(rep(1, 10), rep(2, 10)))
fit4 <- aov(response_x4 ~ xvar4)
#summary(fit1)
anova.tab(fit4)
plotmeans(response_x4 ~ xvar4, xlab = "Variety",
          ylab = "Response", main = "Mean Plot 95% CI")


#两组评酒员对27种红葡萄酒评分折线图
library(ggplot2)

x1r_vote <- rowSums(x1r)
x2r_vote <- rowSums(x2r)
vote <- c(x1r_vote, x2r_vote)
sequ<- c(1:27,1:27)
class_red <- c( rep('First', 27), rep('Second', 27) )
dat1 <- data.frame(sequ, class_red, vote)
ggplot(dat1, aes(x = sequ, y = vote, color = factor(class_red))) + geom_line(size = 2) +
    geom_point(size = 4)

#两组评酒员对28种白葡萄酒评分折线图
x1b_vote <- rowSums(x1b)
x2b_vote <- rowSums(x2b)
vote1 <- c(x1b_vote, x2b_vote)
sequ1 <- c(1:28, 1:28)
class_white <- c(rep('First', 28), rep('Second', 28))
dat2 <- data.frame(sequ1, class_white, vote1)
ggplot(dat2, aes(x = sequ1, y = vote1, color = factor(class_white))) + geom_line(size = 2) +
    geom_point(size = 4)

#标准差计算
#第一组红
s1 <- sd(x1r_vote)
s2 <- sd(x2r_vote)
s3 <- sd(x1b_vote)
s4 <- sd(x2b_vote)
s_total <- c(s1, s2, s3, s4)