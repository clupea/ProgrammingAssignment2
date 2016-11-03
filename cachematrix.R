## These functions create a matrix and then cache its inverse

## This first function creates a matrix by first setting the value of 
## the matrix, getting the value of the matrix, setting the value of
## the inverse, and getting the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get < function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get, 
        setinverse = setinverse,
        getinverse = getinverse)
}


          
## This second function calculates the inverse of the matrix
## created with the first function. First it checks to make sure
## that the index hasn't already been calculated.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if (!is.null(inv)) {
            message("retrieving cached data")
            return(inv)
  }
  matdat <- x$get()
  inv <- solve(matdata, ...)
  x$setinverse(inv)
  inv
}
