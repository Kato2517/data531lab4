#' Calculate the average of values in a specified range
#'
#' This function calculates the average of values in a specified range (low, high).
#'
#' @param lst A numeric vector of values.
#' @param low Minimum value (not inclusive). Default is 0.
#' @param high Maximum value (not inclusive). Default is 100.
#'
#' @return The average of values in the specified range.
#'
#' @examples
#' rand <- runif(10000, 1, 100)
#' avglist(rand, 30, 100)
#'
#' @export
avglist<- function(lst,low=0,high=100){
  new=list()
  for (i in lst){
    if (i>low & i<high){
      new<-append(new,i)
    }
  }
  new1=unlist(new)
  ave <- mean(new1)
  return(ave)
} 
rand=runif(10000,1,100)
m<-avglist(rand,30,100)
m
