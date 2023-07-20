library(rvest)
page=read_html("https://stats.espncricinfo.com/ci/engine/stats/index.html?agemin1=25;ageval1=age;batting_fielding_first=1;class=3;filter=advanced;floodlit=2;host=1;host=2;host=4;host=5;host=6;orderby=runs;result=2;size=100;spanmax1=25+Jun+2021;spanmin1=25+Jun+2018;spanval1=span;team=1;team=2;team=4;team=5;team=6;template=results;toss=2;tournament_type=2;type=allround")
data<-
     page %>%
     html_nodes("table") %>%
     .[[3]] %>%
     html_table()
head(data)
write.csv(data,"lost  toss, lost match and batting first and daynight_T20.csv")
