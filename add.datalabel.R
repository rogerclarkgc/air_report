# add a date label in GrayWolf tox gas result files
# data : the data.frame object
# label : the label add as a new col
# cname: the colname of new col

add_datelabel <- function(data, label, cname){
  data_label <- cbind(data, rep(label, nrow(data)))
  colnames(data_label)[ncol(data_label)] <- cname
  return(data_label)
}