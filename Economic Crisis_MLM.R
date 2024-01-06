####---------------------------------------------------------------------------------------------------
##M0: Empty model with only time_tj
###First we fit the empty models with standardized perceived ethnic threat
EmptyModel_noQuadTerm_stad<-lmer(scale(PerceivedEthnicThreat)~1+time_tj+(1+time_tj|cntry)+(1|CountryYear),
                            data = AllCountry_EconomicCrisis)

summary(EmptyModel_noQuadTerm_stad)

##Plot the random slope of time_tj for different countries:
#First subset the data to fit 133358 rows (This can be used for the Mean Scale later as well):
AllCountry_EconomicCrisis_M0<-AllCountry_EconomicCrisis %>%
        select(PerceivedEthnicThreat, time_tj, cntry, CountryYear)
AllCountry_EconomicCrisis_M0<-na.omit(AllCountry_EconomicCrisis_M0)

#Predict the M0 in a new column in standardized Scale:
AllCountry_EconomicCrisis_M0$M0Pre_Stad<-predict(EmptyModel_noQuadTerm_stad)

##Plotting for standardized scale
RanSloTime_byCountries_Stad<-ggplot(data = AllCountry_EconomicCrisis_M0, 
                               aes(x=time_tj,y=M0Pre_Stad, group=cntry, color=cntry)) + 
        geom_smooth(se=FALSE,method="lm")

###Then we fit the empty model with the mean scale of perceived ethnic threat
EmptyModel_noQuadTerm_MeanS<-lmer(PerceivedEthnicThreat~1+time_tj+(1+time_tj|cntry)+(1|CountryYear),
                                  data = AllCountry_EconomicCrisis)
summary(EmptyModel_noQuadTerm_MeanS)

#Predict the M0 in a new column in mean scale:
AllCountry_EconomicCrisis_M0$M0Pre_MeanS<-predict(EmptyModel_noQuadTerm_MeanS)


#plotting for mean scale:
RanSloTime_byCountries_MeanS<-ggplot(data = AllCountry_EconomicCrisis_M0, 
                               aes(x=time_tj,y=M0Pre_MeanS, group=cntry, color=cntry)) + 
        geom_smooth(se=FALSE,method="lm")


####---------------------------------------------------------------------------------------------------
##M1: Empty model with only time_tj and time_tj square
###First we fit the empty models with standardized perceived ethnic threat
EmptyModel_QuadTerm_stad<-lmer(scale(PerceivedEthnicThreat)~1+time_tj+time_tj_square+
                                       (1+time_tj+time_tj_square|cntry)+(1|CountryYear),
                            data = AllCountry_EconomicCrisis)

summary(EmptyModel_QuadTerm_stad)

###Fir the empty model with mean scale of perceived ethnic threat
EmptyModel_QuadTerm_MeanS<-lmer(PerceivedEthnicThreat~1+time_tj+time_tj_square+
                                       (1+time_tj+time_tj_square|cntry)+(1|CountryYear),
                               data = AllCountry_EconomicCrisis)
summary(EmptyModel_QuadTerm_MeanS)


####---------------------------------------------------------------------------------------------------
##M2: model with dummy 2008
##First with standardized THREAT
M2_Dummy2008_stad<-lmer(scale(PerceivedEthnicThreat)~1+Time2008+time_tj+
                                (1+time_tj|cntry)+(1|CountryYear),
                        data = AllCountry_EconomicCrisis)
summary(M2_Dummy2008_stad)

##Then with the mean scale of THREAT
M2_Dummy2008_MeanS<-lmer(PerceivedEthnicThreat~1+Time2008+time_tj+
                                (1+time_tj|cntry)+(1|CountryYear),
                        data = AllCountry_EconomicCrisis)
summary(M2_Dummy2008_MeanS)


####---------------------------------------------------------------------------------------------------
##M3: model with dummy 2010
M3_Dummy2010_stad<-lmer(scale(PerceivedEthnicThreat)~1+Time2010+time_tj+
                                (1+time_tj|cntry)+(1|CountryYear),
                        data = AllCountry_EconomicCrisis)
summary(M3_Dummy2010_stad)

M3_Dummy2010_MeanS<-lmer(PerceivedEthnicThreat~1+Time2010+time_tj+
                                (1+time_tj|cntry)+(1|CountryYear),
                        data = AllCountry_EconomicCrisis)
summary(M3_Dummy2010_MeanS)


####---------------------------------------------------------------------------------------------------
##M4: model with dummy 2008 and all individual variables
M4_Dummy2008_IndVar_stad<-lmer(scale(PerceivedEthnicThreat)~1+Time2008+time_tj+
                                       GenderFac+AgeGroup+eduyrs+MainAct+IncomeInsecure+
                                       urbanization+religiosity+LeftRight+
                                       (1+time_tj|cntry)+(1|CountryYear),
                               data = AllCountry_EconomicCrisis)
summary(M4_Dummy2008_IndVar_stad)

M4_Dummy2008_IndVar_MeanS<-lmer(PerceivedEthnicThreat~1+Time2008+time_tj+
                                       GenderFac+AgeGroup+eduyrs+MainAct+IncomeInsecure+
                                       urbanization+religiosity+LeftRight+
                                       (1+time_tj|cntry)+(1|CountryYear),
                               data = AllCountry_EconomicCrisis)
summary(M4_Dummy2008_IndVar_MeanS)



####---------------------------------------------------------------------------------------------------
##M5: model with dummy 2008, all individual variables and unemployment rate cross-sectional and longitudinal term
M5_UnemployRate_Stad<-lmer(scale(PerceivedEthnicThreat)~1+Time2008+time_tj+
                                   GenderFac+AgeGroup+eduyrs+MainAct+IncomeInsecure+
                                   urbanization+religiosity+LeftRight+Unemploy_CrossSec+Unemploy_Longi+
                                   (1+time_tj|cntry)+(1|CountryYear),
                           data = AllCountry_EconomicCrisis)
summary(M5_UnemployRate_Stad)

M5_UnemployRate_MeanS<-lmer(PerceivedEthnicThreat~1+Time2008+time_tj+
                                   GenderFac+AgeGroup+eduyrs+MainAct+IncomeInsecure+
                                   urbanization+religiosity+LeftRight+Unemploy_CrossSec+Unemploy_Longi+
                                   (1+time_tj|cntry)+(1|CountryYear),
                           data = AllCountry_EconomicCrisis)
summary(M5_UnemployRate_MeanS)
