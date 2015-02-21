## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  iMatrix <- NULL
  set <- function(y) {
    x <<- y
    iMatrix <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) iMatrix <<- inverse
  getinverse <- function() iMatrix
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  iMatrix <- x$getinverse()
  if(!is.null(iMatrix)) {
    message("getting cached data.")
    return(iMatrix)
  }
  data <- x$get()
  iMatrix <- solve(data)
  x$setinverse(iMatrix)
  iMatrix
}
