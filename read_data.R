#导入数据，建议使用 R 3.6.1
#性能提示：数据使用内存约1.3GB
#这是第一步运行代码
#install.packages("openxlsx")
library(openxlsx)

#导入数据，并以变量命名
mytxtfile = list.files(pattern = "*.xlsx")
list2env(
  lapply(setNames(mytxtfile, make.names(gsub("*.xlsx$", "", mytxtfile))),
         read.xlsx, sheet = 1), envir = .GlobalEnv)

#计算样本加权
wt <- c(5, 10, 6, 8, 16, 6, 8, 8, 22, 11) / 100

##最后可得x1r,x1b,x2r,x2b四个加权矩阵

#####第一组红葡萄
#生成加权矩阵
nrow <- 27;
ncol <- 10
x1r<-matrix(nrow = nrow, ncol = ncol)
#对每个样本进行操作
x <- X1r1[, 2:11]
    for (i in 1:10) {
        x1r[1,i] <- weighted.mean(x[, i], wt)
    }
x <- X1r2[, 2:11]
for (i in 1:10) {
    x1r[2, i] <- weighted.mean(x[, i], wt)
}
x <- X1r3[, 2:11]
for (i in 1:10) {
    x1r[3, i] <- weighted.mean(x[, i], wt)
}
x <- X1r4[, 2:11]
for (i in 1:10) {
    x1r[4, i] <- weighted.mean(x[, i], wt)
}
x <- X1r5[, 2:11]
for (i in 1:10) {
    x1r[5, i] <- weighted.mean(x[, i], wt)
}
x <- X1r6[, 2:11]
for (i in 1:10) {
    x1r[6, i] <- weighted.mean(x[, i], wt)
}
x <- X1r7[, 2:11]
for (i in 1:10) {
    x1r[7, i] <- weighted.mean(x[, i], wt)
}
x <- X1r8[, 2:11]
for (i in 1:10) {
    x1r[8, i] <- weighted.mean(x[, i], wt)
}
x <- X1r9[, 2:11]
for (i in 1:10) {
    x1r[9, i] <- weighted.mean(x[, i], wt)
}
x <- X1r10[, 2:11]
for (i in 1:10) {
    x1r[10, i] <- weighted.mean(x[, i], wt)
}
x <- X1r11[, 2:11]
for (i in 1:10) {
    x1r[11, i] <- weighted.mean(x[, i], wt)
}
x <- X1r12[, 2:11]
for (i in 1:10) {
    x1r[12, i] <- weighted.mean(x[, i], wt)
}
x <- X1r13[, 2:11]
for (i in 1:10) {
    x1r[13, i] <- weighted.mean(x[, i], wt)
}
x <- X1r14[, 2:11]
for (i in 1:10) {
    x1r[14, i] <- weighted.mean(x[, i], wt)
}
x <- X1r15[, 2:11]
for (i in 1:10) {
    x1r[15, i] <- weighted.mean(x[, i], wt)
}
x <- X1r16[, 2:11]
for (i in 1:10) {
    x1r[16, i] <- weighted.mean(x[, i], wt)
}
x <- X1r17[, 2:11]
for (i in 1:10) {
    x1r[17, i] <- weighted.mean(x[, i], wt)
}
x <- X1r18[, 2:11]
for (i in 1:10) {
    x1r[18, i] <- weighted.mean(x[, i], wt)
}
x <- X1r19[, 2:11]
for (i in 1:10) {
    x1r[19, i] <- weighted.mean(x[, i], wt)
}
x <- X1r20[, 2:11]
for (i in 1:10) {
    x1r[20, i] <- weighted.mean(x[, i], wt)
}
x <- X1r21[, 2:11]
for (i in 1:10) {
    x1r[21, i] <- weighted.mean(x[, i], wt)
}
x <- X1r22[, 2:11]
for (i in 1:10) {
    x1r[22, i] <- weighted.mean(x[, i], wt)
}
x <- X1r23[, 2:11]
for (i in 1:10) {
    x1r[23, i] <- weighted.mean(x[, i], wt)
}
x <- X1r24[, 2:11]
for (i in 1:10) {
    x1r[24, i] <- weighted.mean(x[, i], wt)
}
x <- X1r25[, 2:11]
for (i in 1:10) {
    x1r[25, i] <- weighted.mean(x[, i], wt)
}
x <- X1r26[, 2:11]
for (i in 1:10) {
    x1r[26, i] <- weighted.mean(x[, i], wt)
}
x <- X1r27[, 2:11]
for (i in 1:10) {
    x1r[27, i] <- weighted.mean(x[, i], wt)
}

#####第二组红葡萄
#生成加权矩阵
nrow <- 27;
ncol <- 10
x2r <- matrix(nrow = nrow, ncol = ncol)
#对每个样本进行操作
x <- X2r1[, 2:11]
for (i in 1:10) {
    x2r[1, i] <- weighted.mean(x[, i], wt)
}
x <- X2r2[, 2:11]
for (i in 1:10) {
    x2r[2, i] <- weighted.mean(x[, i], wt)
}
x <- X2r3[, 2:11]
for (i in 1:10) {
    x2r[3, i] <- weighted.mean(x[, i], wt)
}
x <- X2r4[, 2:11]
for (i in 1:10) {
    x2r[4, i] <- weighted.mean(x[, i], wt)
}
x <- X2r5[, 2:11]
for (i in 1:10) {
    x2r[5, i] <- weighted.mean(x[, i], wt)
}
x <- X2r6[, 2:11]
for (i in 1:10) {
    x2r[6, i] <- weighted.mean(x[, i], wt)
}
x <- X2r7[, 2:11]
for (i in 1:10) {
    x2r[7, i] <- weighted.mean(x[, i], wt)
}
x <- X2r8[, 2:11]
for (i in 1:10) {
    x2r[8, i] <- weighted.mean(x[, i], wt)
}
x <- X2r9[, 2:11]
for (i in 1:10) {
    x2r[9, i] <- weighted.mean(x[, i], wt)
}
x <- X2r10[, 2:11]
for (i in 1:10) {
    x2r[10, i] <- weighted.mean(x[, i], wt)
}
x <- X2r11[, 2:11]
for (i in 1:10) {
    x2r[11, i] <- weighted.mean(x[, i], wt)
}
x <- X2r12[, 2:11]
for (i in 1:10) {
    x2r[12, i] <- weighted.mean(x[, i], wt)
}
x <- X2r13[, 2:11]
for (i in 1:10) {
    x2r[13, i] <- weighted.mean(x[, i], wt)
}
x <- X2r14[, 2:11]
for (i in 1:10) {
    x2r[14, i] <- weighted.mean(x[, i], wt)
}
x <- X2r15[, 2:11]
for (i in 1:10) {
    x2r[15, i] <- weighted.mean(x[, i], wt)
}
x <- X2r16[, 2:11]
for (i in 1:10) {
    x2r[16, i] <- weighted.mean(x[, i], wt)
}
x <- X2r17[, 2:11]
for (i in 1:10) {
    x2r[17, i] <- weighted.mean(x[, i], wt)
}
x <- X2r18[, 2:11]
for (i in 1:10) {
    x2r[18, i] <- weighted.mean(x[, i], wt)
}
x <- X2r19[, 2:11]
for (i in 1:10) {
    x2r[19, i] <- weighted.mean(x[, i], wt)
}
x <- X2r20[, 2:11]
for (i in 1:10) {
    x2r[20, i] <- weighted.mean(x[, i], wt)
}
x <- X2r21[, 2:11]
for (i in 1:10) {
    x2r[21, i] <- weighted.mean(x[, i], wt)
}
x <- X2r22[, 2:11]
for (i in 1:10) {
    x2r[22, i] <- weighted.mean(x[, i], wt)
}
x <- X2r23[, 2:11]
for (i in 1:10) {
    x2r[23, i] <- weighted.mean(x[, i], wt)
}
x <- X2r24[, 2:11]
for (i in 1:10) {
    x2r[24, i] <- weighted.mean(x[, i], wt)
}
x <- X2r25[, 2:11]
for (i in 1:10) {
    x2r[25, i] <- weighted.mean(x[, i], wt)
}
x <- X2r26[, 2:11]
for (i in 1:10) {
    x2r[26, i] <- weighted.mean(x[, i], wt)
}
x <- X2r27[, 2:11]
for (i in 1:10) {
    x2r[27, i] <- weighted.mean(x[, i], wt)
}

#####第一组白葡萄
#生成加权矩阵
nrow <- 28;
ncol <- 10
x1b <- matrix(nrow = nrow, ncol = ncol)
#对每个样本进行操作
x <- X1b1[, 2:11]
for (i in 1:10) {
    x1b[1, i] <- weighted.mean(x[, i], wt)
}
x <- X1b2[, 2:11]
for (i in 1:10) {
    x1b[2, i] <- weighted.mean(x[, i], wt)
}
x <- X1b3[, 2:11]
for (i in 1:10) {
    x1b[3, i] <- weighted.mean(x[, i], wt)
}
x <- X1b4[, 2:11]
for (i in 1:10) {
    x1b[4, i] <- weighted.mean(x[, i], wt)
}
x <- X1b5[, 2:11]
for (i in 1:10) {
    x1b[5, i] <- weighted.mean(x[, i], wt)
}
x <- X1b6[, 2:11]
for (i in 1:10) {
    x1b[6, i] <- weighted.mean(x[, i], wt)
}
x <- X1b7[, 2:11]
for (i in 1:10) {
    x1b[7, i] <- weighted.mean(x[, i], wt)
}
x <- X1b8[, 2:11]
for (i in 1:10) {
    x1b[8, i] <- weighted.mean(x[, i], wt)
}
x <- X1b9[, 2:11]
for (i in 1:10) {
    x1b[9, i] <- weighted.mean(x[, i], wt)
}
x <- X1b10[, 2:11]
for (i in 1:10) {
    x1b[10, i] <- weighted.mean(x[, i], wt)
}
x <- X1b11[, 2:11]
for (i in 1:10) {
    x1b[11, i] <- weighted.mean(x[, i], wt)
}
x <- X1b12[, 2:11]
for (i in 1:10) {
    x1b[12, i] <- weighted.mean(x[, i], wt)
}
x <- X1b13[, 2:11]
for (i in 1:10) {
    x1b[13, i] <- weighted.mean(x[, i], wt)
}
x <- X1b14[, 2:11]
for (i in 1:10) {
    x1b[14, i] <- weighted.mean(x[, i], wt)
}
x <- X1b15[, 2:11]
for (i in 1:10) {
    x1b[15, i] <- weighted.mean(x[, i], wt)
}
x <- X1b16[, 2:11]
for (i in 1:10) {
    x1b[16, i] <- weighted.mean(x[, i], wt)
}
x <- X1b17[, 2:11]
for (i in 1:10) {
    x1b[17, i] <- weighted.mean(x[, i], wt)
}
x <- X1b18[, 2:11]
for (i in 1:10) {
    x1b[18, i] <- weighted.mean(x[, i], wt)
}
x <- X1b19[, 2:11]
for (i in 1:10) {
    x1b[19, i] <- weighted.mean(x[, i], wt)
}
x <- X1b20[, 2:11]
for (i in 1:10) {
    x1b[20, i] <- weighted.mean(x[, i], wt)
}
x <- X1b21[, 2:11]
for (i in 1:10) {
    x1b[21, i] <- weighted.mean(x[, i], wt)
}
x <- X1b22[, 2:11]
for (i in 1:10) {
    x1b[22, i] <- weighted.mean(x[, i], wt)
}
x <- X1b23[, 2:11]
for (i in 1:10) {
    x1b[23, i] <- weighted.mean(x[, i], wt)
}
x <- X1b24[, 2:11]
for (i in 1:10) {
    x1b[24, i] <- weighted.mean(x[, i], wt)
}
x <- X1b25[, 2:11]
for (i in 1:10) {
    x1b[25, i] <- weighted.mean(x[, i], wt)
}
x <- X1b26[, 2:11]
for (i in 1:10) {
    x1b[26, i] <- weighted.mean(x[, i], wt)
}
x <- X1b27[, 2:11]
for (i in 1:10) {
    x1b[27, i] <- weighted.mean(x[, i], wt)
}
x <- X1b28[, 2:11]
for (i in 1:10) {
    x1b[28, i] <- weighted.mean(x[, i], wt)
}

#####第二组白葡萄
#生成加权矩阵
nrow <- 28;
ncol <- 10
x2b <- matrix(nrow = nrow, ncol = ncol)
#对每个样本进行操作
x <- X2b1[, 2:11]
for (i in 1:10) {
    x2b[1, i] <- weighted.mean(x[, i], wt)
}
x <- X2b2[, 2:11]
for (i in 1:10) {
    x2b[2, i] <- weighted.mean(x[, i], wt)
}
x <- X2b3[, 2:11]
for (i in 1:10) {
    x2b[3, i] <- weighted.mean(x[, i], wt)
}
x <- X2b4[, 2:11]
for (i in 1:10) {
    x2b[4, i] <- weighted.mean(x[, i], wt)
}
x <- X2b5[, 2:11]
for (i in 1:10) {
    x2b[5, i] <- weighted.mean(x[, i], wt)
}
x <- X2b6[, 2:11]
for (i in 1:10) {
    x2b[6, i] <- weighted.mean(x[, i], wt)
}
x <- X2b7[, 2:11]
for (i in 1:10) {
    x2b[7, i] <- weighted.mean(x[, i], wt)
}
x <- X2b8[, 2:11]
for (i in 1:10) {
    x2b[8, i] <- weighted.mean(x[, i], wt)
}
x <- X2b9[, 2:11]
for (i in 1:10) {
    x2b[9, i] <- weighted.mean(x[, i], wt)
}
x <- X2b10[, 2:11]
for (i in 1:10) {
    x2b[10, i] <- weighted.mean(x[, i], wt)
}
x <- X2b11[, 2:11]
for (i in 1:10) {
    x2b[11, i] <- weighted.mean(x[, i], wt)
}
x <- X2b12[, 2:11]
for (i in 1:10) {
    x2b[12, i] <- weighted.mean(x[, i], wt)
}
x <- X2b13[, 2:11]
for (i in 1:10) {
    x2b[13, i] <- weighted.mean(x[, i], wt)
}
x <- X2b14[, 2:11]
for (i in 1:10) {
    x2b[14, i] <- weighted.mean(x[, i], wt)
}
x <- X2b15[, 2:11]
for (i in 1:10) {
    x2b[15, i] <- weighted.mean(x[, i], wt)
}
x <- X2b16[, 2:11]
for (i in 1:10) {
    x2b[16, i] <- weighted.mean(x[, i], wt)
}
x <- X2b17[, 2:11]
for (i in 1:10) {
    x2b[17, i] <- weighted.mean(x[, i], wt)
}
x <- X2b18[, 2:11]
for (i in 1:10) {
    x2b[18, i] <- weighted.mean(x[, i], wt)
}
x <- X2b19[, 2:11]
for (i in 1:10) {
    x2b[19, i] <- weighted.mean(x[, i], wt)
}
x <- X2b20[, 2:11]
for (i in 1:10) {
    x2b[20, i] <- weighted.mean(x[, i], wt)
}
x <- X2b21[, 2:11]
for (i in 1:10) {
    x2b[21, i] <- weighted.mean(x[, i], wt)
}
x <- X2b22[, 2:11]
for (i in 1:10) {
    x2b[22, i] <- weighted.mean(x[, i], wt)
}
x <- X2b23[, 2:11]
for (i in 1:10) {
    x2b[23, i] <- weighted.mean(x[, i], wt)
}
x <- X2b24[, 2:11]
for (i in 1:10) {
    x2b[24, i] <- weighted.mean(x[, i], wt)
}
x <- X2b25[, 2:11]
for (i in 1:10) {
    x2b[25, i] <- weighted.mean(x[, i], wt)
}
x <- X2b26[, 2:11]
for (i in 1:10) {
    x2b[26, i] <- weighted.mean(x[, i], wt)
}
x <- X2b27[, 2:11]
for (i in 1:10) {
    x2b[27, i] <- weighted.mean(x[, i], wt)
}
x <- X2b28[, 2:11]
for (i in 1:10) {
    x2b[28, i] <- weighted.mean(x[, i], wt)
}