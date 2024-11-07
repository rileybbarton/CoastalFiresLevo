#import
library(viridis)
 library(gridExtra)
library(grid)
 library(ggplot2)
 library(tidyverse)
 library(here)
library(viridis)
 setwd(homepath<-"C:/Users/alcol/Documents/Sasha's lab transfer OTHER FILES LOOSE IN DOC/Coastal project/Alex attemp")
 norm_rx=read.csv("Coastal_data_yield.csv", sep=",", header=T, row.names=1)
 #FOR DATA, USE _CONC, _YIELD, OR _RATIOS FOR THE DESIRED ONE
 tn=as.data.frame(t(norm_rx[,1:length(norm_rx)]))
 View(tn)
 sta1=read.csv("Coastal_env.csv", sep=",", header=T, row.names=1)
 ads=metaMDS(tn, k=3, trymax=10000)
 data.scores = as.data.frame(scores(ads)$sites)
 en = envfit(ads, sta1, permutations = 999, na.rm = TRUE)
 en_coord_cont = as.data.frame(scores(en, "vectors")) * ordiArrowMul(en)
 en_coord_cat = as.data.frame(scores(en, "factors")) * ordiArrowMul(en)
 species<-scores(ads, display="species")
 sites<-scores(ads, display="sites")
 data.scores$watershed = sta1$watershed
 data.scores$Time = sta1$time_since_fire_day
 ggplot(data = data.scores, aes(x = NMDS1, y = NMDS2)) + 
   geom_point(data = data.scores, aes(colour = Time, shape = watershed, fill = Time), size = 3, alpha = 1) + 
   scale_shape_manual(values = c(21, 22, 24, 23, 25))+
   scale_fill_gradient(low="#00FFFF", high="navy")+
   scale_color_gradient(low="#00FFFF", high="navy")+
   geom_point(data = species, aes(x = NMDS1, y = NMDS2), 
              shape = 8, stroke = 2, size = 3, alpha = 1, colour = "hotpink") +
   geom_segment(aes(x = 0, y = 0, xend = NMDS1/2, yend = NMDS2/2), 
                data = en_coord_cont, size =1, alpha = 1, colour = "black") +
   geom_text(data = species, aes(x = NMDS1, y = NMDS2-0.015), 
             label = row.names(species), colour = "black", fontface = "bold", size = 3)+
   geom_text(data = en_coord_cont, label = row.names(en_coord_cont), aes (x = NMDS1/2, y = NMDS2/2))+
   theme(axis.title = element_text(size = 10, face = "bold", colour = "grey30"), 
         panel.background = element_blank(), panel.border = element_rect(fill = NA, colour = "grey30"), 
         axis.ticks = element_blank(), axis.text = element_blank(), legend.key = element_blank(), 
         legend.title = element_text(size = 10, face = "bold", colour = "grey30"), 
         legend.text = element_text(size = 9, colour = "grey30"))