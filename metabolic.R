---
title: "Cocatalyst metabolic data"
output: github_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE, warnings=FALSE, messages=FALSE)
```

##Metabolic Data for Novel Cocatalyst
###Set up workspace

```{r}
library(ggplot2)
library(cowplot)
```

###Load Data files

###Cofermentation experimental data
```{r}
HPLC<-read.csv("R HPLC data.csv")
```

#### Veiw data table 
```{r}
head(HPLC, n=10)
```


#### View column names
```{r}
names(HPLC)
```


#### Show table size
```{r}
dim(HPLC)
```


#### Characteristics of each column
```{r}
str(HPLC)
```


### Visualizing the cofermentation metabolic data

#### glucose cofermentation
```{r}
coferm1_glu_plot<-ggplot(data= subset(HPLC, Trial == "coFerm_1" & Compound == "Glucose"), aes(x=Hours, y=Concentration))+
  geom_point(aes(shape=factor(Fermentation)), size =2)+
  scale_shape_manual(values=c(0,1,2))+
  xlab("Time (hr)")+
  ylab("Concentration (g/L)")+
  guides(shape=FALSE)+
  scale_x_continuous(expand=c(0,0))+
  scale_y_continuous(expand=c(0,0))+
  coord_cartesian(clip="off")
coferm1_glu_plot
```


#### succinate cofermentation
```{r}
coferm1_suc_plot<-ggplot(data= subset(HPLC, Trial == "coFerm_1" & Compound == "Succinic Acid"), aes(x=Hours, y=Concentration))+
  geom_point(aes(shape=factor(Fermentation)), size =2)+
  scale_shape_manual(values=c(0,1,2))+
  xlab("Time (hr)")+
  ylab("Concentration (g/L)")+
  guides(shape=FALSE)+
  scale_x_continuous(expand=c(0,0))+
  scale_y_continuous(expand=c(0,0))+
  coord_cartesian(clip="off")
coferm1_suc_plot
```


#### acetate cofermentation
```{r}
coferm1_ace_plot<-ggplot(data= subset(HPLC, Trial == "coFerm_1" & Compound == "Acetic Acid"), aes(x=Hours, y=Concentration))+
  geom_point(aes(shape=factor(Fermentation)), size =2)+
  scale_shape_manual(values=c(0,1,2))+
  xlab("Time (hr)")+
  ylab("Concentration (g/L)")+
  guides(shape=FALSE)+
  scale_x_continuous(expand=c(0,0))+
  scale_y_continuous(expand=c(0,0))+
  coord_cartesian(clip="off")
coferm1_ace_plot
```


#### propionate cofermentation
```{r}
coferm1_pro_plot<-ggplot(data= subset(HPLC, Trial == "coFerm_1" & Compound == "Propionic Acid"), aes(x=Hours, y=Concentration))+
  geom_point(aes(shape=factor(Fermentation)), size =2)+
  scale_shape_manual(values=c(0,1,2))+
  xlab("Time (hr)")+
  ylab("Concentration (g/L)")+
  guides(shape=FALSE)+
  scale_x_continuous(expand=c(0,0))+
  scale_y_continuous(expand=c(0,0))+
  coord_cartesian(clip="off")
coferm1_pro_plot
```



#### cofermentation grid 
```{r}
cofermplot<-plot_grid(coferm1_glu_plot,coferm1_ace_plot,coferm1_suc_plot,coferm1_pro_plot,labels=c("A","B","C","D"),align="v",ncol=2)
cofermplot
```



#### glucose cocatalyst microbial fuel cell
```{r}
coMFC_glu_plot<-ggplot(data= subset(HPLC, Trial == "coMFC_2" & Compound == "Glucose"), aes(x=Hours, y=Concentration))+
  geom_point(aes(shape=factor(Fermentation)), size =2)+
  scale_shape_manual(values=c(0,1,2))+
  xlab("Time (hr)")+
  ylab("Concentration (g/L)")+
  guides(shape=FALSE)+
  scale_x_continuous(expand=c(0,0))+
  scale_y_continuous(expand=c(0,0))+
  coord_cartesian(clip="off")
coMFC_glu_plot
```


#### acetate cocatalyst microbial fuel cell
```{r}
coMFC_ace_plot<-ggplot(data= subset(HPLC, Trial == "coMFC_2" & Compound == "Acetic Acid"), aes(x=Hours, y=Concentration))+
  geom_point(aes(shape=factor(Fermentation)), size =2)+
  scale_shape_manual(values=c(0,1,2))+
  xlab("Time (hr)")+
  ylab("Concentration (g/L)")+
  guides(shape=FALSE)+
  scale_x_continuous(expand=c(0,0))+
  scale_y_continuous(expand=c(0,0))+
  coord_cartesian(clip="off")
coMFC_ace_plot
```


#### succinte cocatalyst microbial fuel cell
```{r}
coMFC_suc_plot<-ggplot(data= subset(HPLC, Trial == "coMFC_2" & Compound == "Succinic Acid"), aes(x=Hours, y=Concentration))+
  geom_point(aes(shape=factor(Fermentation)), size =2)+
  scale_shape_manual(values=c(0,1,2))+
  xlab("Time (hr)")+
  ylab("Concentration (g/L)")+
  guides(shape=FALSE)+
  scale_x_continuous(expand=c(0,0))+
  scale_y_continuous(expand=c(0,0))+
  coord_cartesian(clip="off")
coMFC_suc_plot
```


#### propionate cocatalyst microbial fuel cell
```{r}
coMFC_pro_plot<-ggplot(data= subset(HPLC, Trial == "coMFC_2" & Compound == "Propionic Acid"), aes(x=Hours, y=Concentration))+
  geom_point(aes(shape=factor(Fermentation)), size =2)+
  scale_shape_manual(values=c(0,1,2))+
  xlab("Time (hr)")+
  ylab("Concentration (g/L)")+
  guides(shape=FALSE)+
  scale_x_continuous(expand=c(0,0))+
  scale_y_continuous(expand=c(0,0))+
  coord_cartesian(clip="off")
coMFC_pro_plot
```


#### cocatalyst microbial fuel cell grid 
```{r}
coMFCplot<-plot_grid(coMFC_glu_plot,coMFC_ace_plot,coMFC_suc_plot,coMFC_pro_plot,labels=c("A","B","C","D"),align="v",ncol=2)
coMFCplot
```


