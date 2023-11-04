## Research Question is there any significant difference between root and shoot lignin content
library(readxl)
metals<-read_excel("C:/Users/Poulomi Dey/Downloads/AM,PD_CC Lignin to N_BDS(sorted).xlsx")
View(metals)
metals <- na.omit(metals)
X <- metals$`Root lignin:N`
Y <- metals$`Shoot lignin:N`
anovafit<-aov(X ~ Y)
anova(anovafit)
plot (X,Y, main = "Root v/s Shoot lignin:N ratio",
      xlab= "Root Lignin:N", ylab = "Shoot lignin:N")
