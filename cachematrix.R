

The first function, makeVector creates a special "vector", which is really a list containing a function to

set the value of the vector
get the value of the vector
set the value of the mean
get the value of the mean



makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function{
          x <<- y
          inv <<- NULL
    }
    get <- function() {x}
    setInverse <- function(inverse) {inv <<- }
    getInverse <- function() {inv}
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


The following function calculates the mean of the special vector created with the above function.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if(is.null(inv)){
        message("getting cached data")
        return(inv)
    }
    mat <- x$get()
    inv <- solve(mat, ...)
    x$setInverse(inv)
    inv
}
