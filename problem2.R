##这是第三个运行文件
##
#红葡萄理化特征处理
redgrape_rawdata <- redgrape.file2.[, c(2, 22:26, 42:44, 48, 58:60, 79:81, 88:90)]
temp_aveHUASEGAN <- rowMeans(redgrape_rawdata[, 4:6])
temp_aveVC <- rowMeans(redgrape_rawdata[, 2:3])
temp_aveTANNIN <- rowMeans(redgrape_rawdata[, 7:9])
temp_aveTOTALSUGAR <- rowMeans(redgrape_rawdata[, 11:13])
temp_aveGrainMass <- rowMeans(redgrape_rawdata[, 14:16])
temp_aveJuiceYield <- rowMeans(redgrape_rawdata[, 17:19])
redgrape_data <- cbind(temp_aveHUASEGAN, temp_aveTANNIN,
                       redgrape_rawdata[, 10], temp_aveTOTALSUGAR,
                       temp_aveVC, redgrape_rawdata[, 1], temp_aveJuiceYield,
                       temp_aveGrainMass)
colnames(redgrape_data) <- c('HuaSeGan', 'Tannin', 'Alcohol', 'TotalSugar',
         'VC', 'Sour', 'JuiceYield', 'GrainMass')

#白葡萄理化特征处理
redgrape_rawdata <- whitegrape.file2.[, c(2, 22:26, 42:44, 48, 58:60, 79:81, 88:90)]
temp_aveHUASEGAN <- rowMeans(redgrape_rawdata[, 4:6])
temp_aveVC <- rowMeans(redgrape_rawdata[, 2:3])
temp_aveTANNIN <- rowMeans(redgrape_rawdata[, 7:9])
temp_aveTOTALSUGAR <- rowMeans(redgrape_rawdata[, 11:13])
temp_aveGrainMass <- rowMeans(redgrape_rawdata[, 14:16])
temp_aveJuiceYield <- rowMeans(redgrape_rawdata[, 17:19])
whitegrape_data <- cbind(temp_aveHUASEGAN, temp_aveTANNIN,
                       redgrape_rawdata[, 10], temp_aveTOTALSUGAR,
                       temp_aveVC, redgrape_rawdata[, 1], temp_aveJuiceYield,
                       temp_aveGrainMass)
colnames(whitegrape_data) <- c('HuaSeGan', 'Tannin', 'Alcohol', 'TotalSugar',
         'VC', 'Sour', 'JuiceYield', 'GrainMass')

#利用变异系数计算权重
#红葡萄
mean_vector_red <- apply(redgrape_data, 2, mean)
sd_vector_red <- apply(redgrape_data, 2, sd)
V_vector_red <- sd_vector_red / mean_vector_red
sum_V_vector_red <- sum(V_vector_red)
redgrape_weight <- V_vector_red / sum_V_vector_red

#白葡萄
mean_vector_white <- apply(whitegrape_data, 2, mean)
sd_vector_white <- apply(whitegrape_data, 2, sd)
V_vector_white <- sd_vector_white / mean_vector_white
sum_V_vector_white <- sum(V_vector_white)
whitegrape_weight <- V_vector_white / sum_V_vector_white

#计算红葡萄得分
#数据标准化
redgrape_data_scale <- scale(redgrape_data, center = T, scale = T)
whitegrape_data_scale <- scale(whitegrape_data, center = T, scale = T)
#指标得分
redgrape_score <- redgrape_data_scale %*% redgrape_weight
whitegrape_score <- whitegrape_data_scale %*% whitegrape_weight

##红葡萄酒的质量的人感性确定(选择第二组）要利用第一问的数据
#x2r_vote
#数据标准化
x2r_vote_sd <- scale(x2r_vote)
#综合质量评分（人评分+理化评分）
RedWineComprehensiveScore <- x2r_vote_sd + redgrape_score
##下面是评分排序（红葡萄）
#数值排序（按小到大）
RedWineComprehensiveScore_Value <- sort(RedWineComprehensiveScore)
#原位置
RedWineComprehensiveScore_Value_Order <- order(RedWineComprehensiveScore)
#返回排序矩阵
RedWineComprehensiveScoreOrder <- cbind(as.factor(RedWineComprehensiveScore_Value_Order),
                                        RedWineComprehensiveScore_Value)

##白葡萄酒的质量的人感性确定(选择第二组）要利用第一问的数据
#x2b_vote
#数据标准化
x2b_vote_sd <- scale(x2b_vote)
#综合质量评分（人评分+理化评分）
WhiteWineComprehensiveScore <- x2b_vote_sd + whitegrape_score
##下面是评分排序（白葡萄）
#数值排序（按小到大）
WhiteWineComprehensiveScore_Value <- sort(WhiteWineComprehensiveScore)
#原位置
WhiteWineComprehensiveScore_Value_Order <- order(WhiteWineComprehensiveScore)
#返回排序矩阵
WhiteWineComprehensiveScoreOrder <- cbind(WhiteWineComprehensiveScore_Value_Order,
                                        WhiteWineComprehensiveScore_Value)

#绘制质量评分Cleverland图
library(ggplot2)

#绘制红葡萄酒size=8.7*3.53in
RedWineComprehensiveScoreOrder <- data.frame(RedWineComprehensiveScoreOrder)
names(RedWineComprehensiveScoreOrder) <- c('Sample_Red', 'Vote')
ggplot(RedWineComprehensiveScoreOrder, aes(x = reorder(Sample_Red, Vote), y = Vote)) +
    geom_point(size = 3,color="#FFA658") + theme_bw() +
    theme(axis.text.x = element_text(angle = 60, hjust = 1),
          panel.grid.major.y = element_blank(),
          panel.grid.minor.y = element_blank(),
          panel.grid.major.x = element_line(color = "grey60", linetype = "dashed"))

#绘制白葡萄酒size=8.7*3.53in
WhiteWineComprehensiveScoreOrder <- data.frame(WhiteWineComprehensiveScoreOrder)
names(WhiteWineComprehensiveScoreOrder) <- c('Sample_White', 'Vote')
ggplot(WhiteWineComprehensiveScoreOrder, aes(x = reorder(Sample_White, Vote), y = Vote)) +
    geom_point(size = 3, color = "#009C8E") + theme_bw() +
    theme(axis.text.x = element_text(angle = 60, hjust = 1),
          panel.grid.major.y = element_blank(),
          panel.grid.minor.y = element_blank(),
          panel.grid.major.x = element_line(color = "grey60", linetype = "dashed"))

