## Caching the Inverse of a Matrix
## Two functions below used to create a special object stores a matrix and caches its inverse

## Create a matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
<<<<<<< HEAD
    inv <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
=======
    local_m <- NULL               # Initially set to NULL
    set <- function(y) {          # set a matrix
        cache_x <<- y
        cache_m <<- NULL
    }
    
    get <- function() cache_x                                            # get the matrix
    setinverse <- function(local_m) cache_m <<- local_m                 
    getinverse <- function() cache_m
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
>>>>>>> cfbb3325cfdfd6c59fbc0128008a17413c9e5eaf
    
}


## Compute the inverse of the matrix created by makeCacheMatrix above

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
<<<<<<< HEAD
    inv <- x$getInverse()
    if(!is.null(inv)){
        message("getting cached data")
        return(inv)
    }
    
    mat <- x$get()
    inv <- solve(mat,...)
    x$setInverse(inv)
    inv
=======
    i <- x$getinverse()
      if (!is.null(i)) {
              message("getting cached data")
              return(i)
      }
      data <- x$get()
      i <- solve(data, ...)
      x$setinverse(i)
      i
>>>>>>> cfbb3325cfdfd6c59fbc0128008a17413c9e5eaf
}
