data(iris)
str(iris)
attach(iris)
# factor: qualité + +ieurs modalités : 3groupes 
#verifier corrélations
summary(aov(Sepal.Length~Species))
# p-value < 0.05 =>refuser H0 
# sepal lenth affecte  les modalités de la variable y (types de fleurs)
summary(aov(Sepal.Width~Species))

summary(aov(Petal.Length~Species))
# p-value < 0.05 =>refuser H0 
# petal lenth affecte  les modalités de la variable y (types de fleurs)

summary(aov(Petal.Width~Species))
#maintenat on peut faire analyse discriminante 

library(MASS)
library(psych)
pairs.panels(iris[1:4],gap=0,bg=c("red","green","blue")[iris$species],pch=21)
# dans le diag sup sont les coefficients de corrélations 
# il y a corrélations entre x1 et x4
# il y a corrélations entre x 1et x3
# il ya des corrélations inqiétante mais pas de probléme 
# pour faire le test annova, il faut la normalité 
# dans le diagonale, il y a l'histogramme de x1 qui suit la loi normale 
lda(Species~.,iris)
Species
# on a 1/3 pour group1 1/3 pour group2 et 1/3 pour group3

# LD1 est Z1 
# LD2 est Z2 
# on a 2 FCT discrimiant car nbre FCT discrimiant=nbre_model-1 
# LD1 et LD2 n'ont pas la meme importance, LD1 est plus forte que LD2 ceci est
# remarqué par proportion of trace LD1 domine largement 
# proportion of trace LD1 + proportion of trace LD2 = 1
table(Species)
as.factor(Species) # rendre qualitative 
dim(iris)
res<-lda(Species~.,iris)
res$svd
# le code predict va affecter les 150 individus au groupe
predict(res)
class
posterior
# montre les probabilités que chaque individu appartient aux chaque classe 
# ici les probabilités sont discriminantes (bon chose)
























