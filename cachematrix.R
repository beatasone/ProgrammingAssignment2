##These pair of functions calculate the inverse of a matirx while saving computation by caching.

## This function creates a speicial matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmean <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatirx)
}


## This function computes the inverse of the special matric returned by makeCacheMatirx. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matdata <- x$get()
        m <- solve(matdata, ...)
        x$setmatrix(m)
        m
}
