#install.packages("dplyr")
library(dplyr)

alpha <- c(letters[1:26])
v1 <- c(1:26)
v2 <- c(101:126)
v3 <- c(1101:1126)

original_data <- data.frame(alpha = alpha, ten=v1, hundred = v2, thousand = v3)
ID_col <- "thousand"
id <- original_data[ID_col]

shuffle_data <- function(original_data, ID_col){
  copy.data <- original_data
  copy.data <- dplyr::select(copy.data,-ID_col)
  copy.data <- cbind(id,copy.data)
  for(i in 2:ncol(copy.data)){
    x <- original_data[i]
    shuffle <- dplyr::sample_frac(x,1,replace = FALSE)
    copy.data <- cbind(copy.data,shuffle)
    copy.data <- copy.data[,-2]
  }
}

shuffle_data(original_data,ID_col)