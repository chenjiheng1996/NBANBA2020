#' youngest_player_function
#'
#' This function allows you get the youngest player  at specific year when your input the dataset and the year you want.
#' @param year_val Which year do you want to set.
#' @keywords nba, youngest player
#' @export
#' @examples
#' youngest_player()
#' 
youngest_player<-function(data,year_val){
  data_sub<-subset(data,data$Year==year_val)
  data_sub<-data_sub[,c(1,2,4)]
  data_sub<-data_sub[data_sub$Age == min(data_sub$Age),]
  data_sub[1,]}
  


