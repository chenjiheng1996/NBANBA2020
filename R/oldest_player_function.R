#' oldest_player_function
#'
#' This function allows you get the total points made at specific year when your input the dataset and the year you want.
#' @param data The dataset you are loading in this function
#' @param year_val Which year do you want to set.
#' @keywords nba, oldest player
#' @export
#' @examples
#' oldest_player()
#' oldest_player(data,year_val)

oldest_player<-function(data,year_val){
  data_sub<-subset(data,data$Year==year_val)
  data_sub<-data_sub[,c(1,2,4)]
  data_sub<-data_sub[data_sub$Age == max(data_sub$Age),]
  data_sub[1,]
}


