#EJERCICIO 1 cosa del GEO2R
#Volcano plot
library(ggplot2)
read.csv("C:/Users/100032608/OneDrive/Documentos/Tarea1_Genomica/Tarea1_Genomica/GSE184350.top.table.csv")-> algo
algo
algo$adj.P.Val->pvalaj
algo$logFC->logfc
ggplot(algo, aes(x=logfc, y=-log10(pvalaj)))+
  geom_point(aes(color=pvalaj<0.005))+
  scale_color_manual(values=c("blue","red"))+
  labs(x="log2 foldchange",
       y="-log10(pvalaj)")


