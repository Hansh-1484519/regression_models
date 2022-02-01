input <- mtcars[,c("mpg","disp","hp","wt")]
model <- lm(mpg~disp+hp+wt, data = input)
print(model)
a <- coef(model)[1]
# print(a)
Xdisp <- coef(model)[2]
Xhp <- coef(model)[3]
Xwt <- coef(model)[4]
# print(Xdisp)
# print(Xhp)
# print(Xwt)

predict_next_value <- function(x1,x2,x3) 
{
  milage <- (a + (Xdisp)*(x1) +(Xhp)*(x2) + (Xwt)* (x3))
  return(milage)
}
# var1 <- readline("Enter 1st number : ")
# var2 <- readline("Enter 2nd number : ")
# var3 <- readline("Enter 3rd number : ")
var1 <- 221
var2 <- 102
var3 <- 2.91
predicted_milage <- predict_next_value(var1,var2,var3)
print("Predicted Milage: ")
print(predicted_milage)