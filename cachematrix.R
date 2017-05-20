## Put comments here that give an overall description of what your
## functions do

## make a matric

makeCacheMatrix <- function(x = matrix()) {
    local_m <- NULL               # Initially set to NULL
    set <- function(y) {          # set a matrix
        cache_x <<- y
        cache_m <<- NULL
    }
    
    get <- function() cache_x                                            # get the matrix
    setinverse <- function(local_m) cache_m <<- local_m                 
    getinverse <- function() cache_m
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
    
}


## inverse the matrixs

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
      if (!is.null(i)) {
              message("getting cached data")
              return(i)
      }
      data <- x$get()
      i <- solve(data, ...)
      x$setinverse(i)
      i
}
