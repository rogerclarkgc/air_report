# load data from GrayWolf toxic gas monitor result files
# the file must in the working directory

load_datano2 <- function(filename){
  PAC <- search()
  NEED <- 'package:xlsx'
  if (!NEED %in% PAC){
    library(xlsx)
  }
  temp <- read.xlsx(file = filename, 1)
  if (ncol(temp)>4){
    colnames(temp) <- c('Date', 'NO2', 'SO2', 'CO', 'Temp')
  }else{
    colnames(temp) <- c('Date', 'NO2', 'NO', 'Temp')
  }
  return(temp)
}




  

