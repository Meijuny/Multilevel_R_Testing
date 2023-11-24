##Data Management for Belgium
####------------------------------------------------------------------------------------------------------------------
####BE-Round 3 data management
####Read data in for BE Round 3
BE_Round3<-read.csv("./Economic Crisis Data - CSV/BE-3.csv")

####subset the data into BE for 2006 and BE for 2007
BE_2006<-BE_Round3 %>% 
        filter(inwyys==2006)
BE_2007<-BE_Round3 %>%
        filter(inwyys==2007)

####subset the data to include only the respondents born in the country
BE_2006<-BE_2006 %>% 
        filter(brncntr==1)
BE_2007<-BE_2007 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
BE_2006<-BE_2006 %>% 
        filter(ctzcntr==1)
BE_2007<-BE_2007 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
BE_2006<-BE_2006 %>%
        filter(blgetmg==2)
BE_2007<-BE_2007 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
BE_2006<-BE_2006 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
BE_2007<-BE_2007 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
BE_2006<-BE_2006 %>%
        mutate(UnemploymentRate=rep(0.084,times=1023))
BE_2007<-BE_2007 %>%
        mutate(UnemploymentRate=rep(0.083, times=583))

####-----------------------------------------------------------------------------------------------------------
####BE Round 4 data management
####Read data in for BE Round 4
BE_Round4<-read.csv("./Economic Crisis Data - CSV/BE-4.csv")

####subset the data into BE for 2008 and BE for 2009
BE_2008<-BE_Round4 %>% 
        filter(inwyys==2008)
BE_2009<-BE_Round4 %>%
        filter(inwyys==2009)

####subset the data to include only the respondents born in the country
BE_2008<-BE_2008 %>% 
        filter(brncntr==1)
BE_2009<-BE_2009 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
BE_2008<-BE_2008 %>% 
        filter(ctzcntr==1)
BE_2009<-BE_2009 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
BE_2008<-BE_2008 %>%
        filter(blgetmg==2)
BE_2009<-BE_2009 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
BE_2008<-BE_2008 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
BE_2009<-BE_2009 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
BE_2008<-BE_2008 %>%
        mutate(UnemploymentRate=rep(0.075,times=890))
BE_2009<-BE_2009 %>%
        mutate(UnemploymentRate=rep(0.070,times=642))

####-----------------------------------------------------------------------------------------------------------
####BE Round 5 data management
####Read data in for BE Round 5
BE_Round5<-read.csv("./Economic Crisis Data - CSV/BE-5.csv")

####subset the data into BE for 2010 and BE for 2011
BE_2010<-BE_Round5 %>% 
        filter(inwyys==2010)
BE_2011<-BE_Round5 %>%
        filter(inwyys==2011)

####subset the data to include only the respondents born in the country
BE_2010<-BE_2010 %>% 
        filter(brncntr==1)
BE_2011<-BE_2011 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
BE_2010<-BE_2010 %>% 
        filter(ctzcntr==1)
BE_2011<-BE_2011 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
BE_2010<-BE_2010 %>%
        filter(blgetmg==2)
BE_2011<-BE_2011 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
BE_2010<-BE_2010 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
BE_2011<-BE_2011 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
BE_2010<-BE_2010 %>%
        mutate(UnemploymentRate=rep(0.079,times=710))
BE_2011<-BE_2011 %>%
        mutate(UnemploymentRate=rep(0.083,times=762))

####-----------------------------------------------------------------------------------------------------------
####BE Round 6 data management
####Read data in for BE Round 6
BE_Round6<-read.csv("./Economic Crisis Data - CSV/BE-6.csv")

####subset the data into BE for 2012
BE_2012<-BE_Round6 %>% 
        filter(inwyys==2012)

####subset the data to include only the respondents born in the country
BE_2012<-BE_2012 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
BE_2012<-BE_2012 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
BE_2012<-BE_2012 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
BE_2012<-BE_2012 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
BE_2012<-BE_2012 %>%
        mutate(UnemploymentRate=rep(0.071,times=1560))

####Bind all the BE data together to calculate the mean of unemployment rate across 2005-2011
BE_EconomicCrisis<-rbind(BE_2006, BE_2007, BE_2008, BE_2009, BE_2010, BE_2011, BE_2012)
BE_EconomicCrisis<-BE_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.084+0.083+0.075+0.07+0.079+0.083+0.071)/7)

###----------------------------------------------------------------------------------------------------------------------
##Data Management for BG-Bulgaria
####BG-Round 3 data management
####Read data in for BG Round 3
BG_Round3<-read.csv("./Economic Crisis Data - CSV/BG-3.csv")

####subset the data into BG for 2006
BG_2006<-BG_Round3 %>% 
        filter(inwyys==2006)

####subset the data to include only the respondents born in the country
BG_2006<-BG_2006 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
BG_2006<-BG_2006 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
BG_2006<-BG_2006 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
BG_2006<-BG_2006 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
BG_2006<-BG_2006 %>%
        mutate(UnemploymentRate=rep(0.101,times=1139))

####-----------------------------------------------------------------------------------------------------------
####BG Round 4 data management
####Read data in for BG Round 4
BG_Round4<-read.csv("./Economic Crisis Data - CSV/BG-4.csv")

####subset the data into BG for 2009
BG_2009<-BG_Round4 %>%
        filter(inwyys==2009)

####subset the data to include only the respondents born in the country
BG_2009<-BG_2009 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
BG_2009<-BG_2009 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
BG_2009<-BG_2009 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
BG_2009<-BG_2009 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
BG_2009<-BG_2009 %>%
        mutate(UnemploymentRate=rep(0.056,times=1806))

####-----------------------------------------------------------------------------------------------------------
####BG Round 5 data management
####Read data in for BG Round 5
BG_Round5<-read.csv("./Economic Crisis Data - CSV/BG-5.csv")

####subset the data into BG for 2010 and BG for 2011
BG_2010<-BG_Round5 %>% 
        filter(inwyys==2010)
BG_2011<-BG_Round5 %>%
        filter(inwyys==2011)

####subset the data to include only the respondents born in the country
BG_2010<-BG_2010 %>% 
        filter(brncntr==1)
BG_2011<-BG_2011 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
BG_2010<-BG_2010 %>% 
        filter(ctzcntr==1)
BG_2011<-BG_2011 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
BG_2010<-BG_2010 %>%
        filter(blgetmg==2)
BG_2011<-BG_2011 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
BG_2010<-BG_2010 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
BG_2011<-BG_2011 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
BG_2010<-BG_2010 %>%
        mutate(UnemploymentRate=rep(0.068,times=76))
BG_2011<-BG_2011 %>%
        mutate(UnemploymentRate=rep(0.103,times=1895))

####-----------------------------------------------------------------------------------------------------------
####BG Round 6 data management
####Read data in for BG Round 6
BG_Round6<-read.csv("./Economic Crisis Data - CSV/BG-6.csv")

####subset the data into BG for 2013
BG_2013<-BG_Round6 %>% 
        filter(inwyys==2013)

####subset the data to include only the respondents born in the country
BG_2013<-BG_2013 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
BG_2013<-BG_2013 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
BG_2013<-BG_2013 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
BG_2013<-BG_2013 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
BG_2013<-BG_2013 %>%
        mutate(UnemploymentRate=rep(0.123,times=1839))

####Bind all the data together to calculate the mean of unemployment rate across 2005-2011
BG_EconomicCrisis<-rbind(BG_2006, BG_2009, BG_2010, BG_2011, BG_2013)
BG_EconomicCrisis<-BG_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.101+0.056+0.068+0.103+0.123)/5)


####------------------------------------------------------------------------------------------------------------------
##Data Management for Cyprus
####CY-Round 3 data management
####Read data in for CY Round 3
CY_Round3<-read.csv("./Economic Crisis Data - CSV/CY-3.csv")

####subset the data into CY for 2006
CY_2006<-CY_Round3 %>% 
        filter(inwyys==2006)

####subset the data to include only the respondents born in the country
CY_2006<-CY_2006 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
CY_2006<-CY_2006 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
CY_2006<-CY_2006 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
CY_2006<-CY_2006 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
CY_2006<-CY_2006 %>%
        mutate(UnemploymentRate=rep(0.053,times=924))

####-----------------------------------------------------------------------------------------------------------
####CY Round 4 data management
####Read data in for CY Round 4
CY_Round4<-read.csv("./Economic Crisis Data - CSV/CY-4.csv")

####subset the data into CY for 2008
CY_2008<-CY_Round4 %>% 
        filter(inwyys==2008)

####subset the data to include only the respondents born in the country
CY_2008<-CY_2008 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
CY_2008<-CY_2008 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
CY_2008<-CY_2008 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
CY_2008<-CY_2008 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
CY_2008<-CY_2008 %>%
        mutate(UnemploymentRate=rep(0.039,times=1082))

####-----------------------------------------------------------------------------------------------------------
####CY Round 5 data management
####Read data in for CY Round 5
CY_Round5<-read.csv("./Economic Crisis Data - CSV/CY-5.csv")

####subset the data into CY for 2011
CY_2011<-CY_Round5 %>%
        filter(inwyys==2011)

####subset the data to include only the respondents born in the country
CY_2011<-CY_2011 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
CY_2011<-CY_2011 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
CY_2011<-CY_2011 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
CY_2011<-CY_2011 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
CY_2011<-CY_2011 %>%
        mutate(UnemploymentRate=rep(0.063,times=971))

####-----------------------------------------------------------------------------------------------------------
####CY Round 6 data management
####Read data in for CY Round 6
CY_Round6<-read.csv("./Economic Crisis Data - CSV/CY-6.csv")

####subset the data into CY for 2012 and CY for 2013
CY_2012<-CY_Round6 %>% 
        filter(inwyys==2012)
CY_2013<-CY_Round6 %>% 
        filter(inwyys==2013)

####subset the data to include only the respondents born in the country
CY_2012<-CY_2012 %>% 
        filter(brncntr==1)
CY_2013<-CY_2013 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
CY_2012<-CY_2012 %>% 
        filter(ctzcntr==1)
CY_2013<-CY_2013 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
CY_2012<-CY_2012 %>%
        filter(blgetmg==2)
CY_2013<-CY_2013 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
CY_2012<-CY_2012 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
CY_2013<-CY_2013 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
CY_2012<-CY_2012 %>%
        mutate(UnemploymentRate=rep(0.079,times=948))
CY_2013<-CY_2013 %>%
        mutate(UnemploymentRate=rep(0.118,times=26))

####Bind all the data together to calculate the mean of unemployment rate across 2005-2011
CY_EconomicCrisis<-rbind(CY_2006, CY_2008, CY_2011, CY_2012, CY_2013)
CY_EconomicCrisis<-CY_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.053+0.036+0.063+0.079+0.118)/5)



####------------------------------------------------------------------------------------------------------------------
##Data Management for Denmark
####DK-Round 3 data management
####Read data in for DK Round 3
DK_Round3<-read.csv("./Economic Crisis Data - CSV/DK-3.csv")

####subset the data into DK for 2006 and DK for 2007
DK_2006<-DK_Round3 %>% 
        filter(inwyys==2006)
DK_2007<-DK_Round3 %>%
        filter(inwyys==2007)

####subset the data to include only the respondents born in the country
DK_2006<-DK_2006 %>% 
        filter(brncntr==1)
DK_2007<-DK_2007 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
DK_2006<-DK_2006 %>% 
        filter(ctzcntr==1)
DK_2007<-DK_2007 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
DK_2006<-DK_2006 %>%
        filter(blgetmg==2)
DK_2007<-DK_2007 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
DK_2006<-DK_2006 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
DK_2007<-DK_2007 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
DK_2006<-DK_2006 %>%
        mutate(UnemploymentRate=rep(0.048,times=1089))
DK_2007<-DK_2007 %>%
        mutate(UnemploymentRate=rep(0.039, times=304))

####-----------------------------------------------------------------------------------------------------------
####DK Round 4 data management
####Read data in for DK Round 4
DK_Round4<-read.csv("./Economic Crisis Data - CSV/DK-4.csv")

####subset the data into DK for 2008 and DK for 2009
DK_2008<-DK_Round4 %>% 
        filter(inwyys==2008)
DK_2009<-DK_Round4 %>%
        filter(inwyys==2009)

####subset the data to include only the respondents born in the country
DK_2008<-DK_2008 %>% 
        filter(brncntr==1)
DK_2009<-DK_2009 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
DK_2008<-DK_2008 %>% 
        filter(ctzcntr==1)
DK_2009<-DK_2009 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
DK_2008<-DK_2008 %>%
        filter(blgetmg==2)
DK_2009<-DK_2009 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
DK_2008<-DK_2008 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
DK_2009<-DK_2009 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
DK_2008<-DK_2008 %>%
        mutate(UnemploymentRate=rep(0.038,times=1459))
DK_2009<-DK_2009 %>%
        mutate(UnemploymentRate=rep(0.037,times=32))

####-----------------------------------------------------------------------------------------------------------
####DK Round 5 data management
####Read data in for DK Round 5
DK_Round5<-read.csv("./Economic Crisis Data - CSV/DK-5.csv")

####subset the data into DK for 2010 and DK for 2011
DK_2010<-DK_Round5 %>% 
        filter(inwyys==2010)
DK_2011<-DK_Round5 %>%
        filter(inwyys==2011)

####subset the data to include only the respondents born in the country
DK_2010<-DK_2010 %>% 
        filter(brncntr==1)
DK_2011<-DK_2011 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
DK_2010<-DK_2010 %>% 
        filter(ctzcntr==1)
DK_2011<-DK_2011 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
DK_2010<-DK_2010 %>%
        filter(blgetmg==2)
DK_2011<-DK_2011 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
DK_2010<-DK_2010 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
DK_2011<-DK_2011 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
DK_2010<-DK_2010 %>%
        mutate(UnemploymentRate=rep(0.064,times=983))
DK_2011<-DK_2011 %>%
        mutate(UnemploymentRate=rep(0.078,times=466))




####-----------------------------------------------------------------------------------------------------------
####DK Round 6 data management
####Read data in for DK Round 6
DK_Round6<-read.csv("./Economic Crisis Data - CSV/DK-6.csv")

####subset the data into DK for 2013
DK_2013<-DK_Round6 %>% 
        filter(inwyys==2013)

####subset the data to include only the respondents born in the country
DK_2013<-DK_2013 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
DK_2013<-DK_2013 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
DK_2013<-DK_2013 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
DK_2013<-DK_2013 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
DK_2013<-DK_2013 %>%
        mutate(UnemploymentRate=rep(0.078,times=1516))

####Bind all the data together to calculate the mean of unemployment rate across 2005-2011
DK_EconomicCrisis<-rbind(DK_2006, DK_2007, DK_2008, DK_2009, DK_2010, DK_2011, DK_2013)
DK_EconomicCrisis<-DK_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.048+0.039+0.038+0.037+0.064+0.078+0.078)/7)





####------------------------------------------------------------------------------------------------------------------
##Data Management for Estonia
####EE-Round 3 data management
####Read data in for BE Round 3
EE_Round3<-read.csv("./Economic Crisis Data - CSV/EE-3.csv")

####subset the data into EE for 2006 and BE for 2007
EE_2006<-EE_Round3 %>% 
        filter(inwyys==2006)
EE_2007<-EE_Round3 %>%
        filter(inwyys==2007)

####subset the data to include only the respondents born in the country
EE_2006<-EE_2006 %>% 
        filter(brncntr==1)
EE_2007<-EE_2007 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
EE_2006<-EE_2006 %>% 
        filter(ctzcntr==1)
EE_2007<-EE_2007 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
EE_2006<-EE_2006 %>%
        filter(blgetmg==2)
EE_2007<-EE_2007 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
EE_2006<-EE_2006 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
EE_2007<-EE_2007 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
EE_2006<-EE_2006 %>%
        mutate(UnemploymentRate=rep(0.080,times=342))
EE_2007<-EE_2007 %>%
        mutate(UnemploymentRate=rep(0.059, times=573))



####-----------------------------------------------------------------------------------------------------------
####EE Round 4 data management
####Read data in for EE Round 4
EE_Round4<-read.csv("./Economic Crisis Data - CSV/EE-4.csv")

####subset the data into BE for 2008 and BE for 2009
EE_2008<-EE_Round4 %>% 
        filter(inwyys==2008)
EE_2009<-EE_Round4 %>%
        filter(inwyys==2009)

####subset the data to include only the respondents born in the country
EE_2008<-EE_2008 %>% 
        filter(brncntr==1)
EE_2009<-EE_2009 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
EE_2008<-EE_2008 %>% 
        filter(ctzcntr==1)
EE_2009<-EE_2009 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
EE_2008<-EE_2008 %>%
        filter(blgetmg==2)
EE_2009<-EE_2009 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
EE_2008<-EE_2008 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
EE_2009<-EE_2009 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
EE_2008<-EE_2008 %>%
        mutate(UnemploymentRate=rep(0.046,times=276))
EE_2009<-EE_2009 %>%
        mutate(UnemploymentRate=rep(0.055,times=749))

####-----------------------------------------------------------------------------------------------------------
####EE Round 5 data management
####Read data in for EE Round 5
EE_Round5<-read.csv("./Economic Crisis Data - CSV/EE-5.csv")

####subset the data into EE for 2010 and EE for 2011
EE_2010<-EE_Round5 %>% 
        filter(supqyr==2010)
EE_2011<-EE_Round5 %>%
        filter(supqyr==2011)

####subset the data to include only the respondents born in the country
EE_2010<-EE_2010 %>% 
        filter(brncntr==1)
EE_2011<-EE_2011 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
EE_2010<-EE_2010 %>% 
        filter(ctzcntr==1)
EE_2011<-EE_2011 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
EE_2010<-EE_2010 %>%
        filter(blgetmg==2)
EE_2011<-EE_2011 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
EE_2010<-EE_2010 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,supqyr)
EE_2011<-EE_2011 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,supqyr)

####Give the unemployment values of the previous year to each year
EE_2010<-EE_2010 %>%
        mutate(UnemploymentRate=rep(0.136,times=931))
EE_2011<-EE_2011 %>%
        mutate(UnemploymentRate=rep(0.167,times=442))

colnames(EE_2010)[15]<-"inwyys"
colnames(EE_2011)[15]<-"inwyys"


####-----------------------------------------------------------------------------------------------------------
####EE Round 6 data management
####Read data in for EE Round 6
EE_Round6<-read.csv("./Economic Crisis Data - CSV/EE-6.csv")

####subset the data into EE for 2012 and EE for 2013
EE_2012<-EE_Round6 %>% 
        filter(inwyys==2012)
EE_2013<-EE_Round6 %>% 
        filter(inwyys==2013)

####subset the data to include only the respondents born in the country
EE_2012<-EE_2012 %>% 
        filter(brncntr==1)
EE_2013<-EE_2013 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
EE_2012<-EE_2012 %>% 
        filter(ctzcntr==1)
EE_2013<-EE_2013 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
EE_2012<-EE_2012 %>%
        filter(blgetmg==2)
EE_2013<-EE_2013 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
EE_2012<-EE_2012 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
EE_2013<-EE_2013 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
EE_2012<-EE_2012 %>%
        mutate(UnemploymentRate=rep(0.123,times=1613))
EE_2013<-EE_2013 %>%
        mutate(UnemploymentRate=rep(0.100,times=68))

####Bind all the data together to calculate the mean of unemployment rate across 2005-2011
EE_EconomicCrisis<-rbind(EE_2006, EE_2007, EE_2008, EE_2009, EE_2010, EE_2011, EE_2012, EE_2013)
EE_EconomicCrisis<-EE_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.08+0.059+0.046+0.055+0.136+0.167+0.123+0.1)/8)




####------------------------------------------------------------------------------------------------------------------
##Data Management for Finland
####FI-Round 3 data management
####Read data in for FI Round 3
FI_Round3<-read.csv("./Economic Crisis Data - CSV/FI-3.csv")

####subset the data into FI for 2006
FI_2006<-FI_Round3 %>% 
        filter(inwyys==2006)

####subset the data to include only the respondents born in the country
FI_2006<-FI_2006 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
FI_2006<-FI_2006 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
FI_2006<-FI_2006 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
FI_2006<-FI_2006 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
FI_2006<-FI_2006 %>%
        mutate(UnemploymentRate=rep(0.084,times=1823))


####-----------------------------------------------------------------------------------------------------------
####FI Round 4 data management
####Read data in for FI Round 4
FI_Round4<-read.csv("./Economic Crisis Data - CSV/FI-4.csv")

####subset the data into FI for 2008 and FI for 2009
FI_2008<-FI_Round4 %>% 
        filter(inwyys==2008)
FI_2009<-FI_Round4 %>%
        filter(inwyys==2009)

####subset the data to include only the respondents born in the country
FI_2008<-FI_2008 %>% 
        filter(brncntr==1)
FI_2009<-FI_2009 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
FI_2008<-FI_2008 %>% 
        filter(ctzcntr==1)
FI_2009<-FI_2009 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
FI_2008<-FI_2008 %>%
        filter(blgetmg==2)
FI_2009<-FI_2009 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
FI_2008<-FI_2008 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
FI_2009<-FI_2009 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
FI_2008<-FI_2008 %>%
        mutate(UnemploymentRate=rep(0.068,times=1860))
FI_2009<-FI_2009 %>%
        mutate(UnemploymentRate=rep(0.064,times=258))


####-----------------------------------------------------------------------------------------------------------
####FI Round 5 data management
####Read data in for FI Round 5
FI_Round5<-read.csv("./Economic Crisis Data - CSV/FI-5.csv")

####subset the data into FI for 2010
FI_2010<-FI_Round5 %>% 
        filter(inwyys==2010)

####subset the data to include only the respondents born in the country
FI_2010<-FI_2010 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
FI_2010<-FI_2010 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
FI_2010<-FI_2010 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
FI_2010<-FI_2010 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
FI_2010<-FI_2010 %>%
        mutate(UnemploymentRate=rep(0.083,times=1797))


####-----------------------------------------------------------------------------------------------------------
####FI Round 6 data management
####Read data in for FI Round 6
FI_Round6<-read.csv("./Economic Crisis Data - CSV/FI-6.csv")

####subset the data into FI for 2012 and FI for 2013
FI_2012<-FI_Round6 %>% 
        filter(inwyys==2012)
FI_2013<-FI_Round6 %>% 
        filter(inwyys==2013)

####subset the data to include only the respondents born in the country
FI_2012<-FI_2012 %>% 
        filter(brncntr==1)
FI_2013<-FI_2013 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
FI_2012<-FI_2012 %>% 
        filter(ctzcntr==1)
FI_2013<-FI_2013 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
FI_2012<-FI_2012 %>%
        filter(blgetmg==2)
FI_2013<-FI_2013 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
FI_2012<-FI_2012 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
FI_2013<-FI_2013 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
FI_2012<-FI_2012 %>%
        mutate(UnemploymentRate=rep(0.078,times=1788))
FI_2013<-FI_2013 %>%
        mutate(UnemploymentRate=rep(0.077,times=290))

####Bind all the data together to calculate the mean of unemployment rate across 2005-2011
FI_EconomicCrisis<-rbind(FI_2006, FI_2008, FI_2009, FI_2010, FI_2012, FI_2013)
FI_EconomicCrisis<-FI_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.084+0.068+0.064+0.083+0.078+0.077)/6)





####------------------------------------------------------------------------------------------------------------------
##Data Management for France
####FR-Round 3 data management
####Read data in for FR Round 3
FR_Round3<-read.csv("./Economic Crisis Data - CSV/FR-3.csv")

####subset the data into FR for 2006 and FR for 2007
FR_2006<-FR_Round3 %>% 
        filter(inwyys==2006)
FR_2007<-FR_Round3 %>%
        filter(inwyys==2007)

####subset the data to include only the respondents born in the country
FR_2006<-FR_2006 %>% 
        filter(brncntr==1)
FR_2007<-FR_2007 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
FR_2006<-FR_2006 %>% 
        filter(ctzcntr==1)
FR_2007<-FR_2007 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
FR_2006<-FR_2006 %>%
        filter(blgetmg==2)
FR_2007<-FR_2007 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
FR_2006<-FR_2006 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
FR_2007<-FR_2007 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
FR_2006<-FR_2006 %>%
        mutate(UnemploymentRate=rep(0.085,times=1193))
FR_2007<-FR_2007 %>%
        mutate(UnemploymentRate=rep(0.084, times=564))



####-----------------------------------------------------------------------------------------------------------
####FR Round 4 data management
####Read data in for FR Round 4
FR_Round4<-read.csv("./Economic Crisis Data - CSV/FR-4.csv")

####subset the data into FR for 2008 and FR for 2009
FR_2008<-FR_Round4 %>% 
        filter(inwyys==2008)
FR_2009<-FR_Round4 %>%
        filter(inwyys==2009)

####subset the data to include only the respondents born in the country
FR_2008<-FR_2008 %>% 
        filter(brncntr==1)
FR_2009<-FR_2009 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
FR_2008<-FR_2008 %>% 
        filter(ctzcntr==1)
FR_2009<-FR_2009 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
FR_2008<-FR_2008 %>%
        filter(blgetmg==2)
FR_2009<-FR_2009 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
FR_2008<-FR_2008 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
FR_2009<-FR_2009 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
FR_2008<-FR_2008 %>%
        mutate(UnemploymentRate=rep(0.077,times=1770))
FR_2009<-FR_2009 %>%
        mutate(UnemploymentRate=rep(0.071,times=71))

####-----------------------------------------------------------------------------------------------------------
####FR Round 5 data management
####Read data in for FR Round 5
FR_Round5<-read.csv("./Economic Crisis Data - CSV/FR-5.csv")

####subset the data into FR for 2010 and FR for 2011
FR_2010<-FR_Round5 %>% 
        filter(inwyys==2010)
FR_2011<-FR_Round5 %>%
        filter(inwyys==2011)

####subset the data to include only the respondents born in the country
FR_2010<-FR_2010 %>% 
        filter(brncntr==1)
FR_2011<-FR_2011 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
FR_2010<-FR_2010 %>% 
        filter(ctzcntr==1)
FR_2011<-FR_2011 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
FR_2010<-FR_2010 %>%
        filter(blgetmg==2)
FR_2011<-FR_2011 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
FR_2010<-FR_2010 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
FR_2011<-FR_2011 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
FR_2010<-FR_2010 %>%
        mutate(UnemploymentRate=rep(0.087,times=1281))
FR_2011<-FR_2011 %>%
        mutate(UnemploymentRate=rep(0.089,times=238))


####-----------------------------------------------------------------------------------------------------------
####FR Round 6 data management
####Read data in for FR Round 6
FR_Round6<-read.csv("./Economic Crisis Data - CSV/FR-6.csv")

####subset the data into FR for 2013
FR_2013<-FR_Round6 %>% 
        filter(inwyys==2013)

####subset the data to include only the respondents born in the country
FR_2013<-FR_2013 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
FR_2013<-FR_2013 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
FR_2013<-FR_2013 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
FR_2013<-FR_2013 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
FR_2013<-FR_2013 %>%
        mutate(UnemploymentRate=rep(0.094,times=1699))

####Bind all the data together to calculate the mean of unemployment rate across 2005-2011
FR_EconomicCrisis<-rbind(FR_2006, FR_2007, FR_2008, FR_2009, FR_2010, FR_2011, FR_2013)
FR_EconomicCrisis<-FR_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.085+0.084+0.077+0.071+0.087+0.089+0.094)/7)




####------------------------------------------------------------------------------------------------------------------
##Data Management for Germany
####DE-Round 3 data management
####Read data in for DE Round 3
DE_Round3<-read.csv("./Economic Crisis Data - CSV/DE-3.csv")

####subset the data into DE for 2006 and DE for 2007
DE_2006<-DE_Round3 %>% 
        filter(inwyys==2006)
DE_2007<-DE_Round3 %>%
        filter(inwyys==2007)

####subset the data to include only the respondents born in the country
DE_2006<-DE_2006 %>% 
        filter(brncntr==1)
DE_2007<-DE_2007 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
DE_2006<-DE_2006 %>% 
        filter(ctzcntr==1)
DE_2007<-DE_2007 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
DE_2006<-DE_2006 %>%
        filter(blgetmg==2)
DE_2007<-DE_2007 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
DE_2006<-DE_2006 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
DE_2007<-DE_2007 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
DE_2006<-DE_2006 %>%
        mutate(UnemploymentRate=rep(0.112,times=2362))
DE_2007<-DE_2007 %>%
        mutate(UnemploymentRate=rep(0.103, times=252))


####-----------------------------------------------------------------------------------------------------------
####DE Round 4 data management
####Read data in for DE Round 4
DE_Round4<-read.csv("./Economic Crisis Data - CSV/DE-4.csv")

####subset the data into DE for 2008 and DE for 2009
DE_2008<-DE_Round4 %>% 
        filter(inwyys==2008)
DE_2009<-DE_Round4 %>%
        filter(inwyys==2009)

####subset the data to include only the respondents born in the country
DE_2008<-DE_2008 %>% 
        filter(brncntr==1)
DE_2009<-DE_2009 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
DE_2008<-DE_2008 %>% 
        filter(ctzcntr==1)
DE_2009<-DE_2009 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
DE_2008<-DE_2008 %>%
        filter(blgetmg==2)
DE_2009<-DE_2009 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
DE_2008<-DE_2008 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
DE_2009<-DE_2009 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
DE_2008<-DE_2008 %>%
        mutate(UnemploymentRate=rep(0.087,times=1919))
DE_2009<-DE_2009 %>%
        mutate(UnemploymentRate=rep(0.075,times=536))


###-----------------------------------------------------------------------------------------------------------
####DE Round 5 data management
####Read data in for DE Round 5
DE_Round5<-read.csv("./Economic Crisis Data - CSV/DE-5.csv")

####subset the data into DE for 2010 and DE for 2011
DE_2010<-DE_Round5 %>% 
        filter(inwyys==2010)
DE_2011<-DE_Round5 %>%
        filter(inwyys==2011)

####subset the data to include only the respondents born in the country
DE_2010<-DE_2010 %>% 
        filter(brncntr==1)
DE_2011<-DE_2011 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
DE_2010<-DE_2010 %>% 
        filter(ctzcntr==1)
DE_2011<-DE_2011 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
DE_2010<-DE_2010 %>%
        filter(blgetmg==2)
DE_2011<-DE_2011 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
DE_2010<-DE_2010 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
DE_2011<-DE_2011 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
DE_2010<-DE_2010 %>%
        mutate(UnemploymentRate=rep(0.077,times=1780))
DE_2011<-DE_2011 %>%
        mutate(UnemploymentRate=rep(0.070,times=899))



####-----------------------------------------------------------------------------------------------------------
####DE Round 6 data management
####Read data in for DE Round 6
DE_Round6<-read.csv("./Economic Crisis Data - CSV/DE-6.csv")

####subset the data into DE for 2012 and DE for 2013
DE_2012<-DE_Round6 %>% 
        filter(inwyys==2012)
DE_2013<-DE_Round6 %>% 
        filter(inwyys==2013)

####subset the data to include only the respondents born in the country
DE_2012<-DE_2012 %>% 
        filter(brncntr==1)
DE_2013<-DE_2013 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
DE_2012<-DE_2012 %>% 
        filter(ctzcntr==1)
DE_2013<-DE_2013 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
DE_2012<-DE_2012 %>%
        filter(blgetmg==2)
DE_2013<-DE_2013 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
DE_2012<-DE_2012 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
DE_2013<-DE_2013 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
DE_2012<-DE_2012 %>%
        mutate(UnemploymentRate=rep(0.058,times=2419))
DE_2013<-DE_2013 %>%
        mutate(UnemploymentRate=rep(0.054,times=178))

####Bind all the data together to calculate the mean of unemployment rate across 2005-2011
DE_EconomicCrisis<-rbind(DE_2006, DE_2007, DE_2008, DE_2009, DE_2010, DE_2011, DE_2012, DE_2013)
DE_EconomicCrisis<-DE_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.112+0.103+0.087+0.075+0.077+0.070+0.058+0.054)/8)



##Data Management for Hungary
####------------------------------------------------------------------------------------------------------------------
####HU-Round 3 data management
####Read data in for HU Round 3
HU_Round3<-read.csv("./Economic Crisis Data - CSV/HU-3.csv")

####subset the data into HU for 2006 and HU for 2007
HU_2006<-HU_Round3 %>% 
        filter(inwyys==2006)
HU_2007<-HU_Round3 %>%
        filter(inwyys==2007)

####subset the data to include only the respondents born in the country
HU_2006<-HU_2006 %>% 
        filter(brncntr==1)
HU_2007<-HU_2007 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
HU_2006<-HU_2006 %>% 
        filter(ctzcntr==1)
HU_2007<-HU_2007 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
HU_2006<-HU_2006 %>%
        filter(blgetmg==2)
HU_2007<-HU_2007 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
HU_2006<-HU_2006 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
HU_2007<-HU_2007 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
HU_2006<-HU_2006 %>%
        mutate(UnemploymentRate=rep(0.072,times=1264))
HU_2007<-HU_2007 %>%
        mutate(UnemploymentRate=rep(0.075, times=139))


####-----------------------------------------------------------------------------------------------------------
####HU Round 4 data management
####Read data in for HU Round 4
HU_Round4<-read.csv("./Economic Crisis Data - CSV/HU-4.csv")

####subset the data into HU for 2009
HU_2009<-HU_Round4 %>%
        filter(inwyys==2009)

####subset the data to include only the respondents born in the country
HU_2009<-HU_2009 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
HU_2009<-HU_2009 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
HU_2009<-HU_2009 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
HU_2009<-HU_2009 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
HU_2009<-HU_2009 %>%
        mutate(UnemploymentRate=rep(0.078,times=1429))


####-----------------------------------------------------------------------------------------------------------
####HU Round 5 data management
####Read data in for HU Round 5
HU_Round5<-read.csv("./Economic Crisis Data - CSV/HU-5.csv")

####subset the data into HU for 2010 
HU_2010<-HU_Round5 %>% 
        filter(inwyys==2010)

####subset the data to include only the respondents born in the country
HU_2010<-HU_2010 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
HU_2010<-HU_2010 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
HU_2010<-HU_2010 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
HU_2010<-HU_2010 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
HU_2010<-HU_2010 %>%
        mutate(UnemploymentRate=rep(0.100,times=1443))

####-----------------------------------------------------------------------------------------------------------
####HU Round 6 data management
####Read data in for HU Round 6
HU_Round6<-read.csv("./Economic Crisis Data - CSV/HU-6.csv")

####subset the data into HU for 2012 and HU for 2013
HU_2012<-HU_Round6 %>% 
        filter(inwyys==2012)
HU_2013<-HU_Round6 %>% 
        filter(inwyys==2013)

####subset the data to include only the respondents born in the country
HU_2012<-HU_2012 %>% 
        filter(brncntr==1)
HU_2013<-HU_2013 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
HU_2012<-HU_2012 %>% 
        filter(ctzcntr==1)
HU_2013<-HU_2013 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
HU_2012<-HU_2012 %>%
        filter(blgetmg==2)
HU_2013<-HU_2013 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
HU_2012<-HU_2012 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
HU_2013<-HU_2013 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
HU_2012<-HU_2012 %>%
        mutate(UnemploymentRate=rep(0.11,times=1749))
HU_2013<-HU_2013 %>%
        mutate(UnemploymentRate=rep(0.11,times=115))

####Bind all the BE data together to calculate the mean of unemployment rate across 2005-2011
HU_EconomicCrisis<-rbind(HU_2006, HU_2007, HU_2009, HU_2010, HU_2012, HU_2013)
HU_EconomicCrisis<-HU_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.072+0.075+0.078+0.1+0.11+0.11)/6)


##Data Management for Ireland
####------------------------------------------------------------------------------------------------------------------
####IE-Round 3 data management
####Read data in for IE Round 3
IE_Round3<-read.csv("./Economic Crisis Data - CSV/IE-3.csv")

####subset the data into IE for 2006 and IE for 2007
IE_2006<-IE_Round3 %>% 
        filter(inwyys==2006)
IE_2007<-IE_Round3 %>%
        filter(inwyys==2007)

####subset the data to include only the respondents born in the country
IE_2006<-IE_2006 %>% 
        filter(brncntr==1)
IE_2007<-IE_2007 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
IE_2006<-IE_2006 %>% 
        filter(ctzcntr==1)
IE_2007<-IE_2007 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
IE_2006<-IE_2006 %>%
        filter(blgetmg==2)
IE_2007<-IE_2007 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
IE_2006<-IE_2006 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
IE_2007<-IE_2007 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
IE_2006<-IE_2006 %>%
        mutate(UnemploymentRate=rep(0.043,times=542))
IE_2007<-IE_2007 %>%
        mutate(UnemploymentRate=rep(0.044, times=945))


####-----------------------------------------------------------------------------------------------------------
####IE Round 4 data management
####Read data in for IE Round 4
IE_Round4<-read.csv("./Economic Crisis Data - CSV/IE-4.csv")

####subset the data into IE for 2009 and BE for 2010
IE_2009<-IE_Round4 %>%
        filter(inwyys==2009)
IE_2010<-IE_Round4 %>%
        filter(inwyys==2010)

####subset the data to include only the respondents born in the country
IE_2009<-IE_2009 %>%
        filter(brncntr==1)
IE_2010<-IE_2010 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
IE_2009<-IE_2009 %>% 
        filter(ctzcntr==1)
IE_2010<-IE_2010 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
IE_2009<-IE_2009 %>%
        filter(blgetmg==2)
IE_2010<-IE_2010 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
IE_2009<-IE_2009 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
IE_2010<-IE_2010 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
IE_2009<-IE_2009 %>%
        mutate(UnemploymentRate=rep(0.068,times=1124))
IE_2010<-IE_2010 %>%
        mutate(UnemploymentRate=rep(0.126,times=336))

##---------------------------------------------------------------------------------------------------------------------
####IE Round 5 data management
####Read data in for IE Round 5
IE_Round5<-read.csv("./Economic Crisis Data - CSV/IE-5.csv")

####subset the data into IE for 2011 and IE for 2012
IE_2011<-IE_Round5 %>%
        filter(inwyys==2011)
IE_2012<-IE_Round5 %>%
        filter(inwyys==2012)

####subset the data to include only the respondents born in the country
IE_2011<-IE_2011 %>%
        filter(brncntr==1)
IE_2012<-IE_2012 %>%
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
IE_2011<-IE_2011 %>% 
        filter(ctzcntr==1)
IE_2012<-IE_2012 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
IE_2011<-IE_2011 %>%
        filter(blgetmg==2)
IE_2012<-IE_2012 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
IE_2011<-IE_2011 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
IE_2012<-IE_2012 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
IE_2011<-IE_2011 %>%
        mutate(UnemploymentRate=rep(0.145,times=2030))
IE_2012<-IE_2012 %>%
        mutate(UnemploymentRate=rep(0.153,times=114))


####-----------------------------------------------------------------------------------------------------------
####IE Round 6 data management
####Read data in for IE Round 6
IE_Round6<-read.csv("./Economic Crisis Data - CSV/IE-6.csv")

####subset the data into IE for 2012 and 2013
IE_2012<-IE_Round6 %>% 
        filter(inwyys==2012)
IE_2013<-IE_Round6 %>% 
        filter(inwyys==2013)

####subset the data to include only the respondents born in the country
IE_2012<-IE_2012 %>% 
        filter(brncntr==1)
IE_2013<-IE_2013 %>% 
        filter(brncntr==1)

####subset the data to include only the respondents who are the citizens of the country
IE_2012<-IE_2012 %>% 
        filter(ctzcntr==1)
IE_2013<-IE_2013 %>% 
        filter(ctzcntr==1)

####subset the data to include only the respondents who do not belong to the ethnic minority group
####and also delete whoever did not indicate whether they are from a minority group
IE_2012<-IE_2012 %>%
        filter(blgetmg==2)
IE_2013<-IE_2013 %>%
        filter(blgetmg==2)

####Select the variables relevant to the analysis
IE_2012<-IE_2012 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)
IE_2013<-IE_2013 %>%
        select(idno,essround,cntry,imbgeco,imueclt,imwbcnt,gndr,agea,eduyrs,mnactic,hincfel,domicil,rlgdgr,lrscale,inwyys)

####Give the unemployment values of the previous year to each year
IE_2012<-IE_2012 %>%
        mutate(UnemploymentRate=rep(0.153,times=820))
IE_2013<-IE_2013 %>%
        mutate(UnemploymentRate=rep(0.154,times=1396))

####Bind all the BE data together to calculate the mean of unemployment rate across 2005-2011
IE_EconomicCrisis<-rbind(IE_2006, IE_2007, IE_2009, IE_2010, IE_2011, IE_2012, IE_2013)
IE_EconomicCrisis<-IE_EconomicCrisis %>% 
        mutate(MeanUnEmploymentRate=(0.043+0.044+0.068+0.126+0.145+0.153+0.154)/7)