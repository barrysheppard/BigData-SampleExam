# Question 2.

# 2.	The dataset mtcars is available by default in R.
# 
# a.	Access the mtcars dataset. Load the help file and read about it. 
#     In what year was the data collected?
#   [3 marks]

?mtcars

# Data was extracted from the 1974 Motor Trend US magazine. Models from 73 to 74

# b.	Select only those row which have complete records (i.e., those rows which
# have no NAs). Call this dataframe mtcars2.
# [4 marks]

# One way of doing this is as follows
# complete.cases(data) will return a list of true and false

mtcars2 <- mtcars[complete.cases(mtcars),]
mtcars2

# c.	Use mtcars2 to produce a boxplot of wt against cyl.
# 
# You should:
#   
#   ●	Include different colours for the three boxplots
# ●	Include a main title, and relevant x- and y-axis labels
# ●	Label the boxplots with the names of the cyl
# ●	Rotate the numbers on the left axis so that they appear horizontal

boxplot(wt~cyl, data=mtcars2)

?boxplot

# Basic boxplot. Y ~ X.
boxplot(mtcars2$wt ~ mtcars2$cyl)
# We could use , but we should use ~

# Adding colours
boxplot(mtcars2$wt ~ mtcars2$cyl, col=2:4)

# Rotating numbers
boxplot(mtcars2$wt ~ mtcars2$cyl, col=2:4, las=1)

# Adding labels
boxplot(mtcars2$wt ~ mtcars2$cyl, col=2:4, las=1,
        main='Weight againstCylinder',
        xlab='Number of Cylinders',
        ylab='Weight')

# Comment on the resulting graph.
# [18 marks]

# There is a clear difference in groups with more clyinders meaning more weight
# The groups are distinct with the IQR in each outside the range for the other
# groups.
