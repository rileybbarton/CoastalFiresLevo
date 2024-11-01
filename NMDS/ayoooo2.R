##clear global env
rm(list=ls(all=TRUE))
library(vegan); library(fields)

setwd(homepath<-"C:/Users/alcol/Documents/Sasha's lab transfer OTHER FILES LOOSE IN DOC/NMDS with FTICRMS/Confluence_nmds")

##Do some correlations
norm_rx=read.csv("Confluence_FMAX.csv", sep=",", header=T, row.names=1)
#norm_rx=norm_rx[norm_rx$count>=3,]
tn=as.data.frame(t(norm_rx[,17:length(norm_rx)]))
colnames(tn)=norm_rx[,1]
fi=norm_rx[,1:15]
rownames(fi)=norm_rx[,1]


##Setting up data.frames for NMDS
##this part is to import environmental data, and/or split dataframes that have both ICR and environmental data
sta1=read.csv("Confluence_parameters.csv", sep=",", header=T, row.names=1)
#sta1$NOSC_WeightedAve=sta1$NOSC_WeightedAve+4
#ind1=sta1[,c(8:19,22,24:37,63:66)]
#ind1=ind1[,c(10:length(ind1))]

##NMDS
ads=metaMDS(tn, k=3)

##plot to look for outliers or weird stuff
ordiplot(ads, type="n",display = "species")
orditorp(ads, display="species", pch=20, col="gray")
orditorp(ads, display="sites", pch=1, col="black")

##fit environmental variables
landfit<-envfit(ads, sta1, permutations=1000, na.rm=TRUE)
plot(landfit,p.max=0.05, col="purple4", cex=0.8)

##Extract NMDS data
species<-scores(ads, display="species")
sites<-scores(ads, display="sites")
#species_fi=merge(species, fi, by=0)

write.csv(species, file ="fce_species.csv") #formulas
write.csv(sites, file ="fce_sites.csv") #samples4
#figure out how to export environmental arrow data

##Plot some more
par(mfrow=c(1,1))
ordiplot(ads, type="n",display = "species")
orditorp(ads, display="species", pch=20, col="gray")
orditorp(ads, display="sites", pch=1, col="black")

landfit<-envfit(ads, ind1, permutations=999, na.rm=TRUE)
plot(landfit, cex=0.8, col="slategray")
plot(landfit, p.max=0.05, col="forestgreen", cex=0.8)
plot(landfit, p.max=0.01, col="lightseagreen", cex=0.8)
plot(landfit, p.max=0.001, col="black", cex=0.8)

plot(sites[,2]~sites[,1], xlab="NMDS Dimension 1", ylab= "NMDS Dimension 2", data=sites)
text(sites[,2]~sites[,1], labels=row.names(sites), pos=4)


plot(species[,2]~species[,1], xlab="NMDS Dimension 11", ylab= "NMDS Dimension 22", data=sites, xlim=c(-0.3,0.3), ylim=c(-0.1,0.2))
text(species[,2]~species[,1], labels=row.names(species), pos=4)

plot(landfit, col="blue", cex=1.5)
plot(landfit, p.max=0.05, col="black", lwd=1,cex=1.5)

text(1.5, -0.55, "blue-N.S.")
text(1.5, -0.62, "black, p<0.01")

image.plot(smallplot=c(0.64,0.84, 0.38,0.4),legend.only=TRUE, zlim=range(c(species_x2$`DON_p value`)), legend.lab="Spearman's rho", col=colorRampPalette(c("turquoise4","turquoise","white", "lavender","purple4"))(200), horizontal = TRUE, legend.shrink = 0.5, add=TRUE) 



###color scale plotting
cf=read.csv("Greenland_corrform.csv", sep=",", header=T, row.names=1)
my.color.ramp.fct<-colorRamp(c("turquoise4","turquoise","paleturquoise1","white", "lavender","mediumpurple1","purple4"))
cf=cf[order(abs(cf[,19])),] ##change variables here to change color in NMDS
as.rgb.channels<-my.color.ramp.fct(decostand(cf[,19],method="range")) ##change variables here to change color in NMDS
Spear.color<-rgb(as.rgb.channels,maxColorValue=255)

par(mfrow=c(1,2)) ##Make a plot with 2 panels
plot(cf[,6][cf[,22]<0.05 & cf$N==0], cf[,5][cf[,22]<0.05 & cf$N==0], pch=21, bg=Spear.color[cf[,22]<0.05 & cf$N==0], xlab="O/C", ylab= "H/C",xlim=c(0,1), ylim=c(0.3,2))
plot(cf[,6][cf[,22]<0.05 & cf$N==1], cf[,5][cf[,22]<0.05 & cf$N==1], pch=21, bg=Spear.color[cf[,22]<0.05 & cf$N==1], xlab="O/C", ylab= "H/C",xlim=c(0,1), ylim=c(0.3,2))

image.plot(legend.only=TRUE,legend.lab="Spearman correlation", legend.line=3, zlim=range(c(cf[,19])), col=colorRampPalette(c("turquoise4","turquoise","paleturquoise1","white", "lavender","mediumpurple1","purple4"))(200)) 

