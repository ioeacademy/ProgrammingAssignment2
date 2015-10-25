## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    im <- NULL  #inverse matrix null
    set <- function(y) {
        x <<- y  # add the value of the matrix
        im <<- NULL #Set the inverse ad nuul
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() im
    list(set = set, get = get,
    setinverse = setinverse,
    getinverse = getinverse)



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        im <- x$getinverse()
        if(!is.null(im)) {
            message("getting cached data")
            return(im)
        }
        data <- x$get()
        im <- solve(data, ...)
        x$setinverse(im)
        im
}
