data <- data.frame(
  RiwayatSakitMaag = c(0,0,1,0,0,0,0,0,1,1,1,0,0,1,0,0,0,1,1,0,1,1,0,0,0,1,0,0,1,1,0,1),
  WaktuJedaMakan = c(10,16,15,12,12,10,14,14,7,15,13,17,14,13,12,10,8,12,9,15,12,15,10,13,10,14,15,14,12,6,14,14),
  LamaWaktuTidur = c(6,5,4,7,3,5,5,5,6,5,4,4,6,5,6,5,6,3,6,4,7,2,6,7,7,5,7,4.7,5.5,5,5,4),
  Jumlahkopi = c(0,3,1,0,0,1,1,1,1,1,1,0,0,0,1,1,1,5,0,0,1,2,1,0,0,1,1,0,0,1,0,0)
)
str(data)

model <- glm(RiwayatSakitMaag ~ WaktuJedaMakan + LamaWaktuTidur + Jumlahkopi,
             data = data,
             family = binomial)
summary(model)
exp(coef(model))
anova(model, test = "Chisq")
plot(model)

