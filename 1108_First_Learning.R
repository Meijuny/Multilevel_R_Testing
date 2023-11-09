##Read the data in:
ESS8<-read.csv("./ESS8.csv")

##Select the necessary variable
names(ESS8)
grep("[Ii][Dd]", names(ESS8), value = TRUE)
grep("[Ee][Dd][Uu]", names(ESS8), value = TRUE)
grep("[Ii][Mm]", names(ESS8), value = TRUE)

ESS8_ML<-select(ESS8, idno, cntry, eduyrs, imbgeco)
str(ESS8_ML)

round(tapply(ESS8_ML$imbgeco,ESS8_ML$cntry, FUN = mean, na.rm=TRUE),digits=2)
round(tapply(ESS8_ML$imbgeco,ESS8_ML$cntry,FUN = sd, na.rm=TRUE),digits=2)

##Treating missing value
table(ESS8_ML$cntry)
table(ESS8_ML$eduyrs)
table(ESS8_ML$imbgeco)


defineNA_88<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(88,NA,data[,i]))    
        }
        return(output)
}

defineNA_77<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(77,NA,data[,i]))    
        }
        return(output)
}

defineNA_99<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(99,NA,data[,i]))    
        }
        return(output)
}

ESS8_ML[,3:4]<-defineNA_77(ESS8_ML[,3:4])
ESS8_ML[,3:4]<-defineNA_88(ESS8_ML[,3:4])
ESS8_ML[,3:4]<-defineNA_99(ESS8_ML[,3:4])

sum(is.na(ESS8_ML$eduyrs))
sum(is.na(ESS8_ML$imbgeco))

ESS8_ML_descriptive<-ESS8_ML %>%
        group_by(cntry) %>%
        summarise(imbgeco_mean=mean(imbgeco,na.rm=TRUE),
                  imbgeco_sd=sd(imbgeco,na.rm=TRUE),
                  imbgeco_missing=sum(is.na(imbgeco)))

imbgeco_distribution_byCountry<-ggplot(ESS8_ML,aes(imbgeco))+geom_density()+facet_wrap(.~cntry)
edu_distribution_byCountry<-ggplot(ESS8_ML,aes(eduyrs))+geom_density()+facet_wrap(.~cntry)

ESS8_ML<-na.omit(ESS8_ML)


##Empty model with only random intercept
M0<-lmer(imbgeco~1+(1|cntry),data = ESS8_ML)
summary(M0)

##calculate the ICC by hand:
ICC_M0<-0.722/(0.722+5.726)

##For visualization
#First we predict the values:
ESS8_ML$M0<-predict(M0)

##Then we use ggplot to plot it:
M0_plot<-ggplot(ESS8_ML, aes(eduyrs, M0, color=cntry, group=cntry))+
        geom_smooth(method = "lm") + theme(axis.text.x = element_blank(),
                                           axis.ticks = element_blank())+
        labs(x="",y="imbgeco",color="country")

##Alternative with Lattice:
library(lattice)
qqmath(ranef(M0))
qqmath(ranef(M0,condVar=TRUE))

##Next, we do a model with fixed slope:
M_fixedSlope<-lmer(imbgeco~1+eduyrs+(1|cntry), data = ESS8_ML)
summary(M_fixedSlope)

#calculate ICC manually:
0.6433/(0.6433+5.4719)

#predict the values for each respondents through the model with fixed slope:
ESS8_ML$MfixS<-predict(M_fixedSlope)

##The visual of the fixed slope with random intercept:
PLot_RandomInFixedEffect<-ggplot(data = ESS8_ML, aes(eduyrs,MfixS, group=cntry, color=cntry))+
        geom_smooth(se=FALSE, method="lm")+
        labs(x="education",y="support for immigration", color="country")

##Model with random slope
M_randomeSlope<-lmer(imbgeco~1+eduyrs+(1+eduyrs| cntry), data = ESS8_ML)
summary(M_randomeSlope)

##Predict the values through random slope model:
ESS8_ML$MRanS<-predict(M_randomeSlope)

##Plot the random slope with ggplot
Plot_RanSlope<-ggplot(data = ESS8_ML, aes(eduyrs, MRanS))+
        geom_smooth(se=FALSE, method="lm", linewidth=2, color="red")+
        stat_smooth(aes(group=cntry,color=cntry), geom="line", alpha=0.4, linewidth=1)+
        guides(color="none") + 
        labs(x="education", y="support for immigration", color="country")

##Plot the random slope and random intercept with lattice plot
qqmath(ranef(M_randomeSlope, condVar=TRUE))

##To save the coefficients of the random intercept random slope model:
coefficient_M_randomSlope<-coef(M_randomeSlope)

coefficient_M_randomSlope$cntry %>%
        mutate(cntry=rownames(coefficient_M_randomSlope$cntry)) %>%
        ggplot(aes(eduyrs, `(Intercept)`, label=cntry)) + 
        geom_point()+
        geom_smooth(se=FALSE, method="lm")+
        geom_label(nudge_y = 0.15, alpha=0.5) +
        labs(x="slope",y="intercept")


        



