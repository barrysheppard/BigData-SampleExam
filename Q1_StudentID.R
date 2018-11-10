
# Question 1.
# a.	Install the MASS package, load the library and access the Boston
# dataset contained in it. Load the help file and read about the dataset.
# How many observations are there in the dataset?

# Install package
install.packages('MASS')
library(MASS)

# Load in the data
data(Boston)

# Run the help
?Boston
help(Boston)

# How many observations are there in the dataset.
# From the description we can see 506 rows and 14 columns.


# b.	Look at the structure of the dataset and describe it briefly.
str(Boston)
# From the description we can see the following
# This data frame contains the following columns:
#   
#   crim
# per capita crime rate by town.
# 
# zn
# proportion of residential land zoned for lots over 25,000 sq.ft.
# 
# indus
# proportion of non-retail business acres per town.
# 
# chas
# Charles River dummy variable (= 1 if tract bounds river; 0 otherwise).
# 
# nox
# nitrogen oxides concentration (parts per 10 million).
# 
# rm
# average number of rooms per dwelling.
# 
# age
# proportion of owner-occupied units built prior to 1940.
# 
# dis
# weighted mean of distances to five Boston employment centres.
# 
# rad
# index of accessibility to radial highways.
# 
# tax
# full-value property-tax rate per \$10,000.
# 
# ptratio
# pupil-teacher ratio by town.
# 
# black
# 1000(Bk - 0.63)^2 where Bk is the proportion of blacks by town.
# 
# lstat
# lower status of the population (percent).
# 
# medv
# median value of owner-occupied homes in \$1000s.

summary(Boston)

# crim                zn             indus            chas        
# Min.   : 0.00632   Min.   :  0.00   Min.   : 0.46   Min.   :0.00000  
# 1st Qu.: 0.08204   1st Qu.:  0.00   1st Qu.: 5.19   1st Qu.:0.00000  
# Median : 0.25651   Median :  0.00   Median : 9.69   Median :0.00000  
# Mean   : 3.61352   Mean   : 11.36   Mean   :11.14   Mean   :0.06917  
# 3rd Qu.: 3.67708   3rd Qu.: 12.50   3rd Qu.:18.10   3rd Qu.:0.00000  
# Max.   :88.97620   Max.   :100.00   Max.   :27.74   Max.   :1.00000  
# nox               rm             age              dis              rad        
# Min.   :0.3850   Min.   :3.561   Min.   :  2.90   Min.   : 1.130   Min.   : 1.000  
# 1st Qu.:0.4490   1st Qu.:5.886   1st Qu.: 45.02   1st Qu.: 2.100   1st Qu.: 4.000  
# Median :0.5380   Median :6.208   Median : 77.50   Median : 3.207   Median : 5.000  
# Mean   :0.5547   Mean   :6.285   Mean   : 68.57   Mean   : 3.795   Mean   : 9.549  
# 3rd Qu.:0.6240   3rd Qu.:6.623   3rd Qu.: 94.08   3rd Qu.: 5.188   3rd Qu.:24.000  
# Max.   :0.8710   Max.   :8.780   Max.   :100.00   Max.   :12.127   Max.   :24.000  
# tax           ptratio          black            lstat            medv      
# Min.   :187.0   Min.   :12.60   Min.   :  0.32   Min.   : 1.73   Min.   : 5.00  
# 1st Qu.:279.0   1st Qu.:17.40   1st Qu.:375.38   1st Qu.: 6.95   1st Qu.:17.02  
# Median :330.0   Median :19.05   Median :391.44   Median :11.36   Median :21.20  
# Mean   :408.2   Mean   :18.46   Mean   :356.67   Mean   :12.65   Mean   :22.53  
# 3rd Qu.:666.0   3rd Qu.:20.20   3rd Qu.:396.23   3rd Qu.:16.95   3rd Qu.:25.00  
# Max.   :711.0   Max.   :22.00   Max.   :396.90   Max.   :37.97   Max.   :50.00  



# What unit is the nitrogen oxide variable measured in?
# parters per million

# c.	Find the mean and standard deviation for the room variable in the dataset.

mean(Boston$rm)
# 6.284634
sd(Boston$rm)
# 0.7026171

# d.	For the Charles river variable which group has the highest mean
# value medv and what is the mean value for this treatment?

tapply(Boston$medv, Boston$chas, mean)
# tapplu(variable for mean, group to split, function to get here it's mean)
?tapply()
# 0        1 
# 22.09384 28.44000 


# e.	Create a linear regression for Boston with medv as the response variable
# against the other variables. Which variables are statistically significant
# variable to predict the medv?

model <- lm(medv~., data=Boston)
summary(model)

# Look for the ones with 0.05 or lower. So . or more *s.

# The following variables are all statistically significant p < .05

#   crim        -1.080e-01  3.286e-02  -3.287 0.001087 ** 
#   zn           4.642e-02  1.373e-02   3.382 0.000778 ***
#   chas         2.687e+00  8.616e-01   3.118 0.001925 ** 
#   nox         -1.777e+01  3.820e+00  -4.651 4.25e-06 ***
#   rm           3.810e+00  4.179e-01   9.116  < 2e-16 ***
#   dis         -1.476e+00  1.995e-01  -7.398 6.01e-13 ***
#   rad          3.060e-01  6.635e-02   4.613 5.07e-06 ***
#   tax         -1.233e-02  3.760e-03  -3.280 0.001112 ** 
#   ptratio     -9.527e-01  1.308e-01  -7.283 1.31e-12 ***
#   black        9.312e-03  2.686e-03   3.467 0.000573 ***
#   lstat       -5.248e-01  5.072e-02 -10.347  < 2e-16 ***
