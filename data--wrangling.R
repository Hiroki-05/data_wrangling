alpha <- c(letters[1:26])
v1 <- c(1:26)
v2 <- c(101:126)
v3 <- c(1101:1126)

data_test <- data.frame(alpha = alpha, ten=v1, hundred = v2, thousand = v3)

shufle <- sample_frac(data_test,1,replace = TRUE)

print(shufle)
