# one-sample T-test 2-samples T-Test (2 independent samples ) and paired/matched T-test  (2 dependent samples)
# T test test the significance of the mean and is it greater or less from your hypotitical value 
# Performs one and two sample t-tests on vectors of data.
# default
#X and y must be a (non-empty) numeric vector of data values.
# The null Hypthesis here is: mu is equal 0
t.test(x, y = NULL,alternative = c("two.sided", "less", "greater"),
       mu = 0, paired = FALSE, var.equal = FALSE,
       conf.level = 0.95)


data("iris")
iris
# there are 2 species 
# subset setosa species
setosa<-subset(iris,iris$Species=="setosa")
setosa
# 2 sided T-test 
# Null hypothesis: mean petal width of the setosa = 0.27 cm 
```{R}
t.test(x=setosa$Petal.Width,y=NULL,alternative="two.sided",mu = 0.27)
```
# degreof freedom when performing a t test is n-1 
# P-value =0.1137> 0.05 => reject h0
