library(ggplot2)\
heatmap_data <- read.csv('Gene-coverages-heatmap-treponema.csv')\
colnames(heatmap_data)<- c('Genome','Coverage','Genes')\
heatmap_data$Genome <- factor(heatmap_data$Genome, levels = rev(unique(heatmap_data$Genome)), ordered=TRUE)\
heatmap_data$Genes <- factor(heatmap_data$Genes, levels = rev(unique(heatmap_data$Genes)), ordered=TRUE)\
gg <- ggplot(heatmap_data, aes(x = Genes, y = Genome, fill = Coverage))\
gg <- gg + geom_tile(color = "white", size = 0.1)\
gg <- gg + scale_fill_gradient2(low = "khaki", mid = "lightseagreen", high = "dodgerblue4", midpoint = 0.5)\
gg <- gg + coord_equal()\
gg <- gg + theme_tufte(base_family="Helvetica")\
gg <- gg + theme(plot.title=element_text(hjust=0.5))\
gg <- gg + theme(axis.ticks=element_blank())\
gg <- gg + theme(axis.text.x=element_text(size=7, angle = 300, hjust = 0, vjust = 1.1), axis.text.y=element_text(size = 7))\
gg <- gg + theme(legend.text=element_text(size=8))\
gg <- gg + scale_y_discrete(limits = c("TPA_ALC103","TPA_BCC012","TPA_HUN200024","TPA_RUS_Tuva-41","TPA_SA006","TPA_SWE-996","TPA_UKBRG008","TPA_USL-BAL-2","TPA_USL-Haiti-B","TPA_USL-Phil-3","TPA_USL-SEA-81-8","TPA_ZIM016","TPA_ZIM018","Nichols","Nichols-Houston","PHE120033A","PHE130048A","PHE140073A","Mexico-A","UW279B","BAL73","Chicago","CW56","Seattle-81-4","SHC-0","SMUTp-07","SMUTp-09","SS14","94A","94B","Tartu","Porvoo","KM14-7","JUC013","GAP009","MXV001","RAZ007","Turku","133","AGU007","SJN003","SAMEA3638269","SAMEA3638271","SAMEA3638275","SAMEA3638277","SAMEA3638281","SAMEA3638288","SAMEA3638293","M2","M3","Samoa-D","Sei-Geringging-K403","A10","CDC-2575","CDC-1","CDC-2","Gauthier","GHA-1","Ghana-051","Fribourg-Blanc","HATO","IND1","Kampung-Dalan-K363","LMNP-1","Bosnia-A","Iraq-B","C77","C279","Japan320","Japan322","Japan326","Japan346","DFU001","Cuniculi"))\
gg}
