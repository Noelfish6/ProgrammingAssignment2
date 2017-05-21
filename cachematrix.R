## Caching the Inverse of a Matrix
## Two functions below used to create a special object stores a matrix and caches its inverse

## Create a matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
    
}


## Compute the inverse of the matrix created by makeCacheMatrix above

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if(!is.null(inv)){
        message("getting cached data")
        return(inv)
    }
    
    mat <- x$get()
    inv <- solve(mat,...)
    x$setInverse(inv)
    inv
}
