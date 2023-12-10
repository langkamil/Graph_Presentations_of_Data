# W rozwizaniu korzystam z przykladu, ktory wykonalem na potrzeby swojej pracy licencjackiej


# przyklad dotyczy wykorzystania bardzo znanego zbiory iris, ktory zawiera 
# informacje nt. wymiarow fizycznych 3 roznych gatunkow kwiata irysa
# zbior jest wbudowany do R

library(ggplot2)

View(iris)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, col = Species)) +
  geom_point()
