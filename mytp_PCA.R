# doing PCA 
library(factoextra)
library(FactoMineR)
data(decathlon)
str(decathlon)
summary(decathlon)
head(decathlon)
# data with 41 obs. of  13 variables
# var1 to var 12 are quantitive and var13(competition) is quali
# we will work just with the 10 first vars 
dec.active<-decathlon[,1:10]
dec.active

# PCA 
pca_dec<-PCA(dec.active,scale.unit = T,ncp=5,graph = T, axes=c(1,2))
# # Extract eigenvalues/variances
pca_dec$eig
# or 
# get_eig(pca_dec)

#  Visualize eigenvalues/variances
fviz_eig(dec.active)
# or
# fviz_screeplot(pca_dec, addlabels = TRUE, ylim = c(0, 50))

# # choose the nbre of composant with 2 method Kaiser or Coude 
# With Kaiser wich eigenvalue > 0
pca_dec$var$coord




