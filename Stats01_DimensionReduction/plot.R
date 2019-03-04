setwd("/Users/yolandatiao/Documents/1 Pipkin_Lab/_Lab meeting & T Cell Club/20180409 Joint Lab Meeting")

# Data
library(ggplot2)
data=data.frame(cond = rep(c("condition_1", "condition_2"), each=10), my_x = 1:100 + rnorm(100,sd=9), my_y = 1:100 + rnorm(100,sd=16) )


# Plot1
plot1 <- ggplot(data, aes(x=my_x, y=my_y)) + geom_point(shape=16) + theme_light() + xlab("x") + ylab("y") +
  geom_hline(yintercept=0, color = "red", size=1) +
  geom_vline(xintercept=0, color = "red", size=1)
ggsave("plot1.png", plot1, device="png", width = 8, height = 8,  units = "cm")


# Plot2, normalized
plot2 <- ggplot(data, aes(x=my_x-50, y=my_y-50)) + geom_point(shape=16) + theme_light() + xlab("x") + ylab("y") +
  geom_hline(yintercept=0, color = "red", size=1) +
  geom_vline(xintercept=0, color = "red", size=1)
ggsave("plot2.png", plot2, device="png", width = 8, height = 8,  units = "cm") 

###--- Plot 2 covariance
cov(data$my_x-50, data$my_x-50)
cov(data$my_x-50, data$my_y-50)
cov(data$my_y-50, data$my_x-50)
cov(data$my_y-50, data$my_y-50)


###--- Plot 3
data3=data.frame(cond = rep(c("condition_1", "condition_2"), each=10), my_x = 1:100 + rnorm(200,sd=9), my_y = 1:100 + rnorm(200,sd=9) )
plot3 <- ggplot(data3, aes(x=my_x-50, y=my_y-50)) + geom_point(shape=16) + theme_light() + xlab("x") + ylab("y") +
  geom_hline(yintercept=0, color = "red", size=1) +
  geom_vline(xintercept=0, color = "red", size=1)
ggsave("plot3.png", plot3, device="png", width = 8, height = 8,  units = "cm") 

###--- Plot 3 covariance
cov(data3$my_x-50, data3$my_x-50)
cov(data3$my_x-50, data3$my_y-50)
cov(data3$my_y-50, data3$my_x-50)
cov(data3$my_y-50, data3$my_y-50)


###--- Plot 4
data4=data.frame(cond = rep(c("condition_1", "condition_2"), each=10), my_x = 100:1 + rnorm(200,sd=9), my_y = 1:100 + rnorm(200,sd=9) )
plot4 <- ggplot(data4, aes(x=my_x-50, y=my_y-50)) + geom_point(shape=16) + theme_light() + xlab("x") + ylab("y") +
  geom_hline(yintercept=0, color = "red", size=1) +
  geom_vline(xintercept=0, color = "red", size=1)
ggsave("plot4.png", plot4, device="png", width = 8, height = 8,  units = "cm") 

###--- Plot 4 covariance
cov(data4$my_x-50, data4$my_x-50)
cov(data4$my_x-50, data4$my_y-50)
cov(data4$my_y-50, data4$my_x-50)
cov(data4$my_y-50, data4$my_y-50)


###--- Plot 5
data5=data.frame(cond = rep(c("condition_1", "condition_2"), each=10), my_x = 0 + rnorm(200,sd=9), my_y = 0 + rnorm(200,sd=9) )
plot5 <- ggplot(data5, aes(x=my_x, y=my_y)) + geom_point(shape=16) + theme_light() + xlab("x") + ylab("y") +
  geom_hline(yintercept=0, color = "red", size=1) +
  geom_vline(xintercept=0, color = "red", size=1)
ggsave("plot5.png", plot5, device="png", width = 8, height = 8,  units = "cm") 

###--- Plot 5 covariance
cov(data5$my_x, data5$my_x)
cov(data5$my_x, data5$my_y)
cov(data5$my_y, data5$my_x)
cov(data5$my_y, data5$my_y)

###--- Plot 6
data6=data.frame(cond = rep(c("condition_1", "condition_2"), each=10), my_x = 1:100 + rnorm(200,sd=10), my_y = 1:100 + rnorm(200,sd=40) )
plot6 <- ggplot(data6, aes(x=my_x-50, y=my_y-50)) + geom_point(shape=16) + theme_light() + xlab("x") + ylab("y") +
  geom_hline(yintercept=0, color = "red", size=1) +
  geom_vline(xintercept=0, color = "red", size=1)
ggsave("plot6.png", plot6, device="png", width = 8, height = 8,  units = "cm") 

###--- Plot 6 covariance
cov(data6$my_x-50, data6$my_x-50)
cov(data6$my_x-50, data6$my_y-50)
cov(data6$my_y-50, data6$my_x-50)
cov(data6$my_y-50, data6$my_y-50)




