## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  
  ## settin the matrix
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  ## geting the matrix
  get <- function() {
    x ## returning the matrix
  }
  ## setting the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  ## getting the inverse of the matrix
  getInverse <- function() {
    ## returning the inverse property
    m
  }
  ## returning a list of the methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function


  cacheSolve <- function(x, ...) {
    ## returning a matrix that is the inverse of 'x'
    m <- x$getInverse()
    ## returning the inverse if its already set
    if( !is.null(m) ) {
      message("getting cached data")
      return(m)
    }
    ## getting the matrix from our object
    data <- x$get()
    ## calculating the inverse using matrix multiplication
    m <- solve(data) %*% data
    ## setting the inverse to the object
    x$setInverse(m)
    ## returning the matrix
    m      
  }

