## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  I<-NULL # cached matrix
  set<-function(y){ # input matrix
    x<<-y 
    I<<-NULL
  }
  get<-function() x # get the input matrix
  setmatrix<-function(solve) I<<- solve # calculate inverse of inputmatrix
  getmatrix<-function() I # get the inverse matrix
  #put the results in a list
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

## Write a short comment describing this function
#This function gives the inverse of a matrix. Cached or otherwise recalculated
cacheSolve <- function(x=matrix(), ...) 
{
  
  I <- x$getmatrix() #Ask for cached matrix
  if(!is.null(m)){ #Is it there?
    message("getting cached data")
    return(m)
  }
  matrix<-x$get() #Ask for orginal matrix
  I<-solve(matrix, ...) # calculate inverse
  x$setmatrix(I)# store in cache
  I # return calculated Inverse
}
