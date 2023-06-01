library(ggplot2)
library(factoextra)
library(FactoMineR)
# si uniquement 2 variable
data("housetasks")
housetasks
# convertir le jeu de donnés en tableau de contengence
tc<-as.table(as.matrix(housetasks))
tc
# chi squre test
chisq<-chisq.test(housetasks)
chisq
# X-squared = 1944.5 c'est chi-2 obs
# df = 36= (q-1)(p-1)
# p-value <0.05 refuser l'independance (H0 )=>les 2 vars sont dépendante 
# on cntinuue car les 2 vars sont indépendante.
#ncp :nbre de dimension à conserver ici 3=4-1
resultat<-CA(housetasks,ncp=5,graph=TRUE)
resultat
summary(resultat)
# Eigenvalues=les valeurs propres
# 3 val propre  =min(13,4)-1
# varience = valeurs propres le total est l'inertie=khi2/n
# le taux d'inertie par 2 axes(cumulative % of var ) ici =88.605
# ctr =contibution de laundry sur axe1 = 18.287 cad laundry contribue a 18.% de l'in formation 
#cos2 =0.740 cad axe 1 contribue à l'information de landry à 74%'
# sur l'axe 1 la contribution la plus elevé est celle de laudry, main_meal=>> elle est la modalité la plus représentative
# Sur l'axe 2 la contribution la plus elevé est celle de => elle est la modalité la plus représentative
eig.val<-get_eigenvalue(resultat)
eig.val
fviz_eig(resultat)
#fviz_eig() or fviz_screeplot()
# si on fait la regle de coude on choisit 2 axes car la chute était entre 2 et 3 

### points profil ligne 
# le tableau ligne 
row<-get_ca_row(resultat)
row$coord
row$contrib
# contribution de modalite a l'information de l'axe
# cos2 c'est l'inverse 
fviz_ca_row(resultat)





















