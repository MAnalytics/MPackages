

#' Function to assign alphabetic labels to numeric cluster IDs
#' @param x A vector of numeric cluster ids
#' @return clust_num
#' @examples clusterAlpha(sample(1:30, 50, replace = TRUE))
#' @export
clusterAlpha <- function(x){
  combind_A <- LETTERS
  combind <-  combn(LETTERS, m=2, sep="")# combind[1:2,]
  list_Letters <- NULL
  for(cc in 1:ncol(combind)){#cc=1
    list_Letters <-c(list_Letters,  paste(combind[1,cc],   combind[2,cc], sep=""))
  }
  list_Letters <- c(combind_A, list_Letters) #combine
  if(length(x)<=350){
  clust_num <- list_Letters[x]
  return(clust_num)
  }
  if(length(x)>350){
    print("alphabets exhasted! specify a vector with fewer elements")
  }

}

