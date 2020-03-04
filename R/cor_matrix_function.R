#' cor_matrix_function
#'
#' This function allows you to get the correlation table among the numerical variables within the selected year
#' @param dataset 
#' @param year_val Which year do you want to set.
#' @keywords correlation, matrix
#' @export
#' @examples
#' cor_matrix()

cor_matrix<-function(data,year_val){
  data_sub<-subset(data,data$Year==year_val)
  a1 <- purrr::keep(data_sub,is.numeric)
  a2 <-na.omit(a1)
  a3<-cor(a2)
  corrplot::corrplot(a3, method="circle")
}

