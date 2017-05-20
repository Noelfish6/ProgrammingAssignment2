## Put comments here that give an overall description of what your
## functions do

## make a matric

makeCacheMatrix <- function(x = matrix()) {
    local_m <- NULL
    set <- function(y) {
        cache_x <<- y
        cache_m <<- NULL
    }
    
    get <- function() cache_x
    setmean <- function(local_m) cache_m <<- local_m
    getmean <- function() cache_m
    list(set = set, get = get, setmean = setmean, getmean = getmean)
    
}


## inverse the matrixs

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    local_m<- x$get_cache_m()
    if(!is.null(local_m)){
        message("getting cached data")
        return(local_m)
    }
    
    startingmatrix <- x$get()
    endingmatrix <- solve(startingmatrix)
    x$set_cache_m(endingmatrix)
    endingmatrix
}
