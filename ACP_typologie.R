## ACP 

library(FactoMineR)
library(factoextra)
library(ggplot2)
library(lehuynh)


##Calcul de TES 

data_select$wy_scale <- MinMaxScaling(data_select$wyield_vol)

data_select$carbone_scale <- MinMaxScaling(data_select$sum)

data_select$TES <- (data_select$wy_scale*0.5) + (data_select$carbone_scale * 0.5)


##Données de sélection 

data_acp <- data_select %>% 
  select(wyield_vol, sum, ed, shdi, forest_cover, anthropic_press, TES)

pca <- PCA(data_acp, scale.unit = TRUE)

##Affichage des scores 

summary(pca)

plot(pca, choix = "var", habillage = "none")

## Clustering 

clust <- HCPC(pca, nb.clust = -1, graph = TRUE, description = TRUE)

clust$desc.var

plot1 <- fviz_cluster(clust, main = 'Clustering des sous-bassins', repel = TRUE,show.clust.cent = TRUE)


data_select$cluster <- clust$data.clust$clust


##Jointure avec shape 

shape <- shape %>% 
  left_join(data_select, by = "ws_id")



## Graphique 

ggplot(shape)+
  geom_sf(aes(fill = cluster))+
  theme_minimal()
