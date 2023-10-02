a<-read.csv("C:/Users/hexua/Downloads/lab4.csv")
added<-data.frame(
  name = c("Diego", "Kim", "Nelson"),
  age = c(22, 67, 11),
  gender = c("M", "F", "M"),
  height = c(129, 103, 100),
  weight = c(50.77, 32.11, 22.74),
  country = c("Mexico", "North Korea", "Uganda"),
  email = c("diegor@mail.tfr.mx", "kimlady@gmail.com", "nSekitolenko@urj.com")
)
new<- rbind(a,added)
thefinal <- new[, sapply(new, is.numeric)]
ave=colMeans(thefinal,na.rm = TRUE)
print(ave)