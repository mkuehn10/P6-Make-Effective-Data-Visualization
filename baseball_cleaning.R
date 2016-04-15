setwd("F:/Dropbox/Courses/00 Nanodegree -- Data Analyst/P6 Make Effective Data Visualization/P6-Make-Effective-Data-Visualization")
baseball_df <- read.csv('baseball_data.csv')

# Remove players with .000 avg and 0 HR
baseball_df <- subset(baseball_df, (avg != 0 & HR != 0))
# Add bins for batting average
summary(baseball_df$avg)
# baseball_df$avg_cat <- cut(baseball_df$avg, 
#                            c(-Inf, .100, .200, .300, Inf), 
#                            include.lowest = TRUE, 
#                            labels = c(".000 - .100", 
#                                       ".101 - .200", 
#                                       ".201 - .300",
#                                       "> .300"))

baseball_df$avg_cat <- cut(baseball_df$avg, 
                           c(seq(.100, .350, .025)), 
                           include.lowest = TRUE)

#baseball_df$avg_cat <- cut(baseball_df$avg, c(seq(.100, .330, .010)), include.lowest = TRUE)

summary(baseball_df$weight)

# Add bins for weight
# Weights will be rounded up to the nearest 5 pound increment
# For example, a weight of 182 will be recorded as 185

baseball_df$weight_cat <- cut(baseball_df$weight, 
                              c(seq(135, 245,5)), 
                              include.lowest = TRUE, 
                              labels = c(seq(140, 245,5)))

lut <- c("B" = "Switch", "L" = "Left", "R" = "Right" )
baseball_df$batting <- lut[baseball_df$handedness]

write.csv(baseball_df, 'baseball_data_modified.csv', row.names = FALSE)
