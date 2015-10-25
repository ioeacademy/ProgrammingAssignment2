## Submisstion for the Coursera R Programming Coures

## makeCacheMatric is a fucntion that create a new object that has the property of storing a matrix and its inverse when calculated.

makeCacheMatrix <- function(x = matrix()) {
    im <- NULL  # Set initially the inverse matrix to null
    set <- function(y) {
        x <<- y  # if the method "set"  is invocated the Matrix is stored in the X
        im <<- NULL # The Inverse matrix value is reset to NULL
        
        get <- function() x  # Get Method just returns the Matrix
        setinverse <- function(inverse) im <<- inverse  # setinverse can be used to write the inverse matrix
    getinverse <- function() im  # getinverse returns the inverse matrix cached.
    list(set = set, get = get,   # Returns the new object created
    setinverse = setinverse,
    getinverse = getinverse)



## cacheSolve is a function that operate on the new Matrix object, calculate the inverse and store it in the cache variable "im"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        im <- x$getinverse()  # Call the method to get the inverse matrix cached
        if(!is.null(im)) {  # If the cached version is not NULL the fuction returns the cached version and ..
            message("getting cached data") # dispaly a message allerting that is a cached data.
            return(im)
        }
        data <- x$get()    # If instead the there is no cached version it takes the data from the matrix...
        im <- solve(data, ...)  # Calculate the inverse matrix and...
        x$setinverse(im)  # Stores it in the cache variable
        im
}
