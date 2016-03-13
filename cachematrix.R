## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##
## 20160313 - ab4data - This function sets up the list to be used in the function
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
    
}

## Write a short comment describing this function
##
## 20160313 - ab4data - This function detmines if the 'inverse' had already been created/exists
## ... and if not then it produces the inverse....
## then returns the inverse

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getsolve()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setselve(m)
    m
}
