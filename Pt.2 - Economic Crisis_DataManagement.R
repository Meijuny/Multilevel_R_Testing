#####----------------------------------------------------------------------------------------------------------
##Data managemment for Netherlands
##Read NL Round 3-6 in:
NL_Round3to6<-read.csv("./Economic Crisis Data - CSV/NL-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
NL_Round3to6 <- NL_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
NL_Round3to6 <- NL_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(NL_Round3to6$inwyys)

##subset NL for each year:
NL_2006<-NL_Round3to6 %>%
        filter(inwyys==2006)
NL_2007<-NL_Round3to6 %>%
        filter(inwyys==2007)
NL_2008<-NL_Round3to6 %>%
        filter(inwyys==2008)
NL_2009<-NL_Round3to6 %>%
        filter(inwyys==2009)
NL_2010<-NL_Round3to6 %>%
        filter(inwyys==2010)
NL_2011<-NL_Round3to6 %>%
        filter(inwyys==2011)
NL_2012<-NL_Round3to6 %>%
        filter(inwyys==2012)
NL_2013<-NL_Round3to6 %>%
        filter(inwyys==2013)

##Give the unemployment rate of the previous year to each year
NL_2006<-NL_2006 %>%
        mutate(UnemploymentRate=rep(0.059,times=1270))
NL_2007<-NL_2007 %>%
        mutate(UnemploymentRate=rep(0.050,times=417))
NL_2008<-NL_2008 %>%
        mutate(UnemploymentRate=rep(0.042,times=1011))
NL_2009<-NL_2009 %>%
        mutate(UnemploymentRate=rep(0.036,times=561))
NL_2010<-NL_2010 %>%
        mutate(UnemploymentRate=rep(0.043,times=1067))
NL_2011<-NL_2011 %>%
        mutate(UnemploymentRate=rep(0.050,times=589))
NL_2012<-NL_2012 %>%
        mutate(UnemploymentRate=rep(0.050,times=1317))
NL_2013<-NL_2013 %>%
        mutate(UnemploymentRate=rep(0.058,times=322))

##Bind the data together and give the mean mean of unemployment rate across all time points
NL_EconomicCrisis<-rbind(NL_2006, NL_2007, NL_2008, NL_2009, NL_2010, NL_2011, NL_2012, NL_2013)
NL_EconomicCrisis<-NL_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.059+0.050+0.042+0.036+0.043+0.050+0.050+0.058)/8)




#####----------------------------------------------------------------------------------------------------------
##Data managemment for Norway
##Read NO Round 3-6 in:
NO_Round3to6<-read.csv("./Economic Crisis Data - CSV/NO-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
NO_Round3to6 <- NO_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
NO_Round3to6 <- NO_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(NO_Round3to6$inwyys)

##Year of 2007 is not available
##subset NO for each year:
NO_2006<-NO_Round3to6 %>%
        filter(inwyys==2006)
NO_2008<-NO_Round3to6 %>%
        filter(inwyys==2008)
NO_2009<-NO_Round3to6 %>%
        filter(inwyys==2009)
NO_2010<-NO_Round3to6 %>%
        filter(inwyys==2010)
NO_2011<-NO_Round3to6 %>%
        filter(inwyys==2011)
NO_2012<-NO_Round3to6 %>%
        filter(inwyys==2012)
NO_2013<-NO_Round3to6 %>%
        filter(inwyys==2013)

##Give the unemployment rate of the previous year to each year
NO_2006<-NO_2006 %>%
        mutate(UnemploymentRate=rep(0.044,times=1591))
NO_2008<-NO_2008 %>%
        mutate(UnemploymentRate=rep(0.025,times=1371))
NO_2009<-NO_2009 %>%
        mutate(UnemploymentRate=rep(0.025,times=21))
NO_2010<-NO_2010 %>%
        mutate(UnemploymentRate=rep(0.031,times=1199))
NO_2011<-NO_2011 %>%
        mutate(UnemploymentRate=rep(0.035,times=151))
NO_2012<-NO_2012 %>%
        mutate(UnemploymentRate=rep(0.032,times=1231))
NO_2013<-NO_2013 %>%
        mutate(UnemploymentRate=rep(0.031,times=152))

##Bind the data together and give the mean mean of unemployment rate across all time points
NO_EconomicCrisis<-rbind(NO_2006, NO_2008, NO_2009, NO_2010, NO_2012, NO_2012, NO_2013)
NO_EconomicCrisis<-NO_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.044+0.025+0.025+0.031+0.035+0.032+0.031)/7)




#####----------------------------------------------------------------------------------------------------------
##Data managemment for Poland
##Read PL Round 3-6 in:
PL_Round3to6<-read.csv("./Economic Crisis Data - CSV/PL-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
PL_Round3to6 <- PL_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
PL_Round3to6 <- PL_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(PL_Round3to6$inwyys)

##Year of 2007 has only 2 observations and Year of 2013 has only 13 observations
##Take out 2007 but keep 2013 for the moment
##subset PL for each year:
PL_2006<-PL_Round3to6 %>%
        filter(inwyys==2006)
PL_2008<-PL_Round3to6 %>%
        filter(inwyys==2008)
PL_2009<-PL_Round3to6 %>%
        filter(inwyys==2009)
PL_2010<-PL_Round3to6 %>%
        filter(inwyys==2010)
PL_2011<-PL_Round3to6 %>%
        filter(inwyys==2011)
PL_2012<-PL_Round3to6 %>%
        filter(inwyys==2012)
PL_2013<-PL_Round3to6 %>%
        filter(inwyys==2013)

##Give the unemployment rate of the previous year to each year
PL_2006<-PL_2006 %>%
        mutate(UnemploymentRate=rep(0.178,times=1645))
PL_2008<-PL_2008 %>%
        mutate(UnemploymentRate=rep(0.096,times=1396))
PL_2009<-PL_2009 %>%
        mutate(UnemploymentRate=rep(0.071,times=169))
PL_2010<-PL_2010 %>%
        mutate(UnemploymentRate=rep(0.082,times=1648))
PL_2011<-PL_2011 %>%
        mutate(UnemploymentRate=rep(0.096,times=32))
PL_2012<-PL_2012 %>%
        mutate(UnemploymentRate=rep(0.096,times=1816))
PL_2013<-PL_2013 %>%
        mutate(UnemploymentRate=rep(0.101,times=13))

##Bind the data together and give the mean mean of unemployment rate across all time points
PL_EconomicCrisis<-rbind(PL_2006, PL_2008, PL_2009, PL_2010, PL_2011, PL_2012, PL_2013)
PL_EconomicCrisis<-PL_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.178+0.096+0.071+0.082+0.096+0.096+0.101)/7)





#####----------------------------------------------------------------------------------------------------------
##Data managemment for Portugal
##Read PT Round 3-6 in:
PT_Round3to6<-read.csv("./Economic Crisis Data - CSV/PT-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
PT_Round3to6 <- PT_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
PT_Round3to6 <- PT_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(PT_Round3to6$inwyys)

##subset PT for each year:
PT_2006<-PT_Round3to6 %>%
        filter(inwyys==2006)
PT_2007<-PT_Round3to6 %>%
        filter(inwyys==2007)
PT_2008<-PT_Round3to6 %>%
        filter(inwyys==2008)
PT_2009<-PT_Round3to6 %>%
        filter(inwyys==2009)
PT_2010<-PT_Round3to6 %>%
        filter(inwyys==2010)
PT_2011<-PT_Round3to6 %>%
        filter(inwyys==2011)
PT_2012<-PT_Round3to6 %>%
        filter(inwyys==2012)
PT_2013<-PT_Round3to6 %>%
        filter(inwyys==2013)

##Give the unemployment rate of the previous year to each year
PT_2006<-PT_2006 %>%
        mutate(UnemploymentRate=rep(0.076,times=665))
PT_2007<-PT_2007 %>%
        mutate(UnemploymentRate=rep(0.077,times=1203))
PT_2008<-PT_2008 %>%
        mutate(UnemploymentRate=rep(0.080,times=922))
PT_2009<-PT_2009 %>%
        mutate(UnemploymentRate=rep(0.075,times=1232))
PT_2010<-PT_2010 %>%
        mutate(UnemploymentRate=rep(0.094,times=172))
PT_2011<-PT_2011 %>%
        mutate(UnemploymentRate=rep(0.108,times=1805))
PT_2012<-PT_2012 %>%
        mutate(UnemploymentRate=rep(0.127,times=373))
PT_2013<-PT_2013 %>%
        mutate(UnemploymentRate=rep(0.155,times=1610))

##Bind the data together and give the mean mean of unemployment rate across all time points
PT_EconomicCrisis<-rbind(PT_2006, PT_2007, PT_2008, PT_2009, PT_2010, PT_2011, PT_2012, PT_2013)
PT_EconomicCrisis<-PT_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.076+0.077+0.080+0.075+0.094+0.108+0.127+0.155)/8)




#####----------------------------------------------------------------------------------------------------------
##Data managemment for Russia
##Read RU Round 3-6 in:
RU_Round3to6<-read.csv("./Economic Crisis Data - CSV/RU-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
RU_Round3to6 <- RU_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
RU_Round3to6 <- RU_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(RU_Round3to6$inwyys)

##Year of 2013 is not available
##subset RU for each year:
RU_2006<-RU_Round3to6 %>%
        filter(inwyys==2006)
RU_2007<-RU_Round3to6 %>%
        filter(inwyys==2007)
RU_2008<-RU_Round3to6 %>%
        filter(inwyys==2008)
RU_2009<-RU_Round3to6 %>%
        filter(inwyys==2009)
RU_2010<-RU_Round3to6 %>%
        filter(inwyys==2010)
RU_2011<-RU_Round3to6 %>%
        filter(inwyys==2011)
RU_2012<-RU_Round3to6 %>%
        filter(inwyys==2012)

##Give the unemployment rate of the previous year to each year
RU_2006<-RU_2006 %>%
        mutate(UnemploymentRate=rep(0.071,times=1895))
RU_2007<-RU_2007 %>%
        mutate(UnemploymentRate=rep(0.071,times=23))
RU_2008<-RU_2008 %>%
        mutate(UnemploymentRate=rep(0.060,times=1645))
RU_2009<-RU_2009 %>%
        mutate(UnemploymentRate=rep(0.062,times=433))
RU_2010<-RU_2010 %>%
        mutate(UnemploymentRate=rep(0.083,times=49))
RU_2011<-RU_2011 %>%
        mutate(UnemploymentRate=rep(0.074,times=2076))
RU_2012<-RU_2012 %>%
        mutate(UnemploymentRate=rep(0.065,times=1964))

##Bind the data together and give the mean mean of unemployment rate across all time points
RU_EconomicCrisis<-rbind(RU_2006, RU_2007, RU_2008, RU_2009, RU_2010, RU_2011, RU_2012)
RU_EconomicCrisis<-RU_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.071+0.071+0.060+0.062+0.083+0.074+0.065)/7)





#####----------------------------------------------------------------------------------------------------------
##Data management for Slovakia
##Read SK Round 3-6 in:
SK_Round3to6<-read.csv("./Economic Crisis Data - CSV/SK-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
SK_Round3to6 <- SK_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
SK_Round3to6 <- SK_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(SK_Round3to6$inwyys)

##subset SK for each year:
SK_2006<-SK_Round3to6 %>%
        filter(inwyys==2006)
SK_2007<-SK_Round3to6 %>%
        filter(inwyys==2007)
SK_2008<-SK_Round3to6 %>%
        filter(inwyys==2008)
SK_2009<-SK_Round3to6 %>%
        filter(inwyys==2009)
SK_2010<-SK_Round3to6 %>%
        filter(inwyys==2010)
SK_2011<-SK_Round3to6 %>%
        filter(inwyys==2011)
SK_2012<-SK_Round3to6 %>%
        filter(inwyys==2012)
SK_2013<-SK_Round3to6 %>%
        filter(inwyys==2013)

##Give the unemployment rate of the previous year to each year
SK_2006<-SK_2006 %>%
        mutate(UnemploymentRate=rep(0.163,times=746))
SK_2007<-SK_2007 %>%
        mutate(UnemploymentRate=rep(0.134,times=752))
SK_2008<-SK_2008 %>%
        mutate(UnemploymentRate=rep(0.111,times=1009))
SK_2009<-SK_2009 %>%
        mutate(UnemploymentRate=rep(0.095,times=616))
SK_2010<-SK_2010 %>%
        mutate(UnemploymentRate=rep(0.120,times=1160))
SK_2011<-SK_2011 %>%
        mutate(UnemploymentRate=rep(0.144,times=470))
SK_2012<-SK_2012 %>%
        mutate(UnemploymentRate=rep(0.136,times=1284))
SK_2013<-SK_2013 %>%
        mutate(UnemploymentRate=rep(0.14,times=411))


##Bind the data together and give the mean mean of unemployment rate across all time points
SK_EconomicCrisis<-rbind(SK_2006, SK_2007, SK_2008, SK_2009, SK_2010, SK_2011, SK_2012, SK_2013)
SK_EconomicCrisis<-SK_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.163+0.134+0.111+0.095+0.120+0.144+0.136+0.140)/8)




#####----------------------------------------------------------------------------------------------------------
##Data management for Slovenia
##Read SI Round 3-6 in:
SI_Round3to6<-read.csv("./Economic Crisis Data - CSV/SI-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
SI_Round3to6 <- SI_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
SI_Round3to6 <- SI_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(SI_Round3to6$inwyys)

##Year of 2007 and 2013 is not available while year of 2009 has only 3 observations
##subset SI for each year:
SI_2006<-SI_Round3to6 %>%
        filter(inwyys==2006)
SI_2008<-SI_Round3to6 %>%
        filter(inwyys==2008)
SI_2010<-SI_Round3to6 %>%
        filter(inwyys==2010)
SI_2011<-SI_Round3to6 %>%
        filter(inwyys==2011)
SI_2012<-SI_Round3to6 %>%
        filter(inwyys==2012)

##Give the unemployment rate of the previous year to each year
SI_2006<-SI_2006 %>%
        mutate(UnemploymentRate=rep(0.065,times=1289))
SI_2008<-SI_2008 %>%
        mutate(UnemploymentRate=rep(0.048,times=1133))
SI_2010<-SI_2010 %>%
        mutate(UnemploymentRate=rep(0.059,times=1016))
SI_2011<-SI_2011 %>%
        mutate(UnemploymentRate=rep(0.072,times=165))
SI_2012<-SI_2012 %>%
        mutate(UnemploymentRate=rep(0.082,times=1124))

##Bind the data together and give the mean mean of unemployment rate across all time points
SI_EconomicCrisis<-rbind(SI_2006, SI_2008, SI_2010, SI_2011, SI_2012)
SI_EconomicCrisis<-SI_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.065+0.048+0.059+0.072+0.082)/5)




#####----------------------------------------------------------------------------------------------------------
##Data management for Spain
##Read ES Round 3-6 in:
ES_Round3to6<-read.csv("./Economic Crisis Data - CSV/ES-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
ES_Round3to6 <- ES_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
ES_Round3to6 <- ES_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(ES_Round3to6$inwyys)

##Year of 2010 and 2012 is not available while year of 2009 has only 15 observations
##subset ES for each year:
ES_2006<-ES_Round3to6 %>%
        filter(inwyys==2006)
ES_2007<-ES_Round3to6 %>%
        filter(inwyys==2007)
ES_2008<-ES_Round3to6 %>%
        filter(inwyys==2008)
ES_2009<-ES_Round3to6 %>%
        filter(inwyys==2009)
ES_2011<-ES_Round3to6 %>%
        filter(inwyys==2011)
ES_2013<-ES_Round3to6 %>%
        filter(inwyys==2013)

##Give the unemployment rate of the previous year to each year
ES_2006<-ES_2006 %>%
        mutate(UnemploymentRate=rep(0.092,times=1253))
ES_2007<-ES_2007 %>%
        mutate(UnemploymentRate=rep(0.084,times=427))
ES_2008<-ES_2008 %>%
        mutate(UnemploymentRate=rep(0.082,times=2284))
ES_2009<-ES_2009 %>%
        mutate(UnemploymentRate=rep(0.113,times=15))
ES_2011<-ES_2011 %>%
        mutate(UnemploymentRate=rep(0.199,times=1658))
ES_2013<-ES_2013 %>%
        mutate(UnemploymentRate=rep(0.248,times=1613))

##Bind the data together and give the mean mean of unemployment rate across all time points
ES_EconomicCrisis<-rbind(ES_2006, ES_2007, ES_2008, ES_2009, ES_2011, ES_2013)
ES_EconomicCrisis<-ES_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.092+0.084+0.082+0.113+0.199+0.248)/6)



#####----------------------------------------------------------------------------------------------------------
##Data management for Sweden
##Read SE Round 3-6 in:
SE_Round3to6<-read.csv("./Economic Crisis Data - CSV/SE-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
SE_Round3to6 <- SE_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
SE_Round3to6 <- SE_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(SE_Round3to6$inwyys)

##subset SE for each year:
SE_2006<-SE_Round3to6 %>%
        filter(inwyys==2006)
SE_2007<-SE_Round3to6 %>%
        filter(inwyys==2007)
SE_2008<-SE_Round3to6 %>%
        filter(inwyys==2008)
SE_2009<-SE_Round3to6 %>%
        filter(inwyys==2009)
SE_2010<-SE_Round3to6 %>%
        filter(inwyys==2010)
SE_2011<-SE_Round3to6 %>%
        filter(inwyys==2011)
SE_2012<-SE_Round3to6 %>%
        filter(inwyys==2012)
SE_2013<-SE_Round3to6 %>%
        filter(inwyys==2013)

##Give the unemployment rate of the previous year to each year
SE_2006<-SE_2006 %>%
        mutate(UnemploymentRate=rep(0.075,times=1488))
SE_2007<-SE_2007 %>%
        mutate(UnemploymentRate=rep(0.071,times=197))
SE_2008<-SE_2008 %>%
        mutate(UnemploymentRate=rep(0.062,times=1448))
SE_2009<-SE_2009 %>%
        mutate(UnemploymentRate=rep(0.062,times=140))
SE_2010<-SE_2010 %>%
        mutate(UnemploymentRate=rep(0.083,times=908))
SE_2011<-SE_2011 %>%
        mutate(UnemploymentRate=rep(0.086,times=386))
SE_2012<-SE_2012 %>%
        mutate(UnemploymentRate=rep(0.078,times=916))
SE_2013<-SE_2013 %>%
        mutate(UnemploymentRate=rep(0.080,times=666))

##Bind the data together and give the mean mean of unemployment rate across all time points
SE_EconomicCrisis<-rbind(SE_2006, SE_2007, SE_2008, SE_2009, SE_2010, SE_2011, SE_2012, SE_2013)
SE_EconomicCrisis<-SE_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.075+0.071+0.062+0.062+0.083+0.086+0.078+0.080)/8)




#####----------------------------------------------------------------------------------------------------------
##Data management for Switzerland
##Read CH Round 3-6 in:
CH_Round3to6<-read.csv("./Economic Crisis Data - CSV/CH-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
CH_Round3to6 <- CH_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
CH_Round3to6 <- CH_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(CH_Round3to6$inwyys)

##subset CH for each year:
CH_2006<-CH_Round3to6 %>%
        filter(inwyys==2006)
CH_2007<-CH_Round3to6 %>%
        filter(inwyys==2007)
CH_2008<-CH_Round3to6 %>%
        filter(inwyys==2008)
CH_2009<-CH_Round3to6 %>%
        filter(inwyys==2009)
CH_2010<-CH_Round3to6 %>%
        filter(inwyys==2010)
CH_2011<-CH_Round3to6 %>%
        filter(inwyys==2011)
CH_2012<-CH_Round3to6 %>%
        filter(inwyys==2012)
CH_2013<-CH_Round3to6 %>%
        filter(inwyys==2013)

##Give the unemployment rate of the previous year to each year
CH_2006<-CH_2006 %>%
        mutate(UnemploymentRate=rep(0.044,times=1132))
CH_2007<-CH_2007 %>%
        mutate(UnemploymentRate=rep(0.040,times=269))
CH_2008<-CH_2008 %>%
        mutate(UnemploymentRate=rep(0.036,times=937))
CH_2009<-CH_2009 %>%
        mutate(UnemploymentRate=rep(0.034,times=398))
CH_2010<-CH_2010 %>%
        mutate(UnemploymentRate=rep(0.041,times=930))
CH_2011<-CH_2011 %>%
        mutate(UnemploymentRate=rep(0.048,times=164))
CH_2012<-CH_2012 %>%
        mutate(UnemploymentRate=rep(0.044,times=933))
CH_2013<-CH_2013 %>%
        mutate(UnemploymentRate=rep(0.045,times=144))

##Bind the data together and give the mean mean of unemployment rate across all time points
CH_EconomicCrisis<-rbind(CH_2006, CH_2007, CH_2008, CH_2009, CH_2010, CH_2011, CH_2012, CH_2013)
CH_EconomicCrisis<-CH_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.044+0.040+0.036+0.034+0.041+0.048+0.044+0.045)/8)




#####----------------------------------------------------------------------------------------------------------
##Data management for Ukraine
##Read UA Round 3-6 in:
UA_Round3to6<-read.csv("./Economic Crisis Data - CSV/UA-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
UA_Round3to6 <- UA_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
UA_Round3to6 <- UA_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(UA_Round3to6$inwyys)

##Year of 2008, 2010, and 2012 is not available
##subset CH for each year:
UA_2006<-UA_Round3to6 %>%
        filter(inwyys==2006)
UA_2007<-UA_Round3to6 %>%
        filter(inwyys==2007)
UA_2009<-UA_Round3to6 %>%
        filter(inwyys==2009)
UA_2011<-UA_Round3to6 %>%
        filter(inwyys==2011)
UA_2013<-UA_Round3to6 %>%
        filter(inwyys==2013)

##Give the unemployment rate of the previous year to each year
UA_2006<-UA_2006 %>%
        mutate(UnemploymentRate=rep(0.072,times=1522))
UA_2007<-UA_2007 %>%
        mutate(UnemploymentRate=rep(0.068,times=112))
UA_2009<-UA_2009 %>%
        mutate(UnemploymentRate=rep(0.064,times=1503))
UA_2011<-UA_2011 %>%
        mutate(UnemploymentRate=rep(0.081,times=1476))
UA_2013<-UA_2013 %>%
        mutate(UnemploymentRate=rep(0.075,times=1814))

##Bind the data together and give the mean mean of unemployment rate across all time points
UA_EconomicCrisis<-rbind(UA_2006, UA_2007, UA_2009, UA_2011, UA_2013)
UA_EconomicCrisis<-UA_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.072+0.068+0.064+0.081+0.075)/5)




#####----------------------------------------------------------------------------------------------------------
##Data management for the UK
##Read GB Round 3-6 in:
GB_Round3to6<-read.csv("./Economic Crisis Data - CSV/GB-3-4-5-6.csv")

##Subset the data to include only the respondents born in the country
##who is also citizen of the country 
##who does not belong to the ehtnic minority group
GB_Round3to6 <- GB_Round3to6 %>%
        filter(brncntr==1 & ctzcntr==1 & blgetmg==2)

##Select the necessary variables:
GB_Round3to6 <- GB_Round3to6 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

##To check which year we have data available:
table(GB_Round3to6$inwyys)

##Year of 2007 has only 16 observations and year of 2009 only has 34 observations
##subset CH for each year:
GB_2006<-GB_Round3to6 %>%
        filter(inwyys==2006)
GB_2007<-GB_Round3to6 %>%
        filter(inwyys==2007)
GB_2008<-GB_Round3to6 %>%
        filter(inwyys==2008)
GB_2009<-GB_Round3to6 %>%
        filter(inwyys==2009)
GB_2010<-GB_Round3to6 %>%
        filter(inwyys==2010)
GB_2011<-GB_Round3to6 %>%
        filter(inwyys==2011)
GB_2012<-GB_Round3to6 %>%
        filter(inwyys==2012)
GB_2013<-GB_Round3to6 %>%
        filter(inwyys==2013)

##Give the unemployment rate of the previous year to each year
GB_2006<-GB_2006 %>%
        mutate(UnemploymentRate=rep(0.048,times=2069))
GB_2007<-GB_2007 %>%
        mutate(UnemploymentRate=rep(0.053,times=16))
GB_2008<-GB_2008 %>%
        mutate(UnemploymentRate=rep(0.053,times=2001))
GB_2009<-GB_2009 %>%
        mutate(UnemploymentRate=rep(0.056,times=34))
GB_2010<-GB_2010 %>%
        mutate(UnemploymentRate=rep(0.075,times=1939))
GB_2011<-GB_2011 %>%
        mutate(UnemploymentRate=rep(0.078,times=127))
GB_2012<-GB_2012 %>%
        mutate(UnemploymentRate=rep(0.080,times=1728))
GB_2013<-GB_2013 %>%
        mutate(UnemploymentRate=rep(0.079,times=211))

##Bind the data together and give the mean mean of unemployment rate across all time points
GB_EconomicCrisis<-rbind(GB_2006, GB_2007, GB_2008, GB_2009, GB_2010, GB_2011, GB_2012, GB_2013)
GB_EconomicCrisis<-GB_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.048+0.053+0.053+0.056+0.075+0.078+0.080+0.079)/8)