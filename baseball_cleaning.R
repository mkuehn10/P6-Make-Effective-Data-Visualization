baseball_df <- read.csv('baseball_data.csv')

# Remove players with .000 avg and 0 HR
baseball_df <- subset(baseball_df, (avg != 0 & HR != 0))

# Add bins for batting average
average_labels = c(".100 - .125", ".126 - .150", ".151 - .175", ".176 - .200",
                   ".201 - .225", ".226 - .250", ".251 - .275", ".276 - .300",
                   ".301 - .325", ".326 - .350")

baseball_df$avg_cat <- cut(baseball_df$avg, 
                           c(seq(.100, .350, .025)), 
                           include.lowest = TRUE,
                           labels = average_labels)

summary(baseball_df$weight)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#140.0   170.0   180.0   182.8   193.0   230.0 

# Add bins for weight
# Classify according to Light, Medium, and Heavy
baseball_df$weight_cat <- cut(baseball_df$weight, 
                              c(140, 169, 199, 230), 
                              include.lowest = TRUE, 
                              labels = c("Light (< 170)", 
                                         "Medium (> 170, < 200)", 
                                         "Heavy (> 200)"))
# Change the codes for handedness to be more user friendly
lut <- c("B" = "Switch", "L" = "Left", "R" = "Right" )
baseball_df$batting <- lut[baseball_df$handedness]

write.csv(baseball_df, 'baseball_data_modified.csv', row.names = FALSE)
