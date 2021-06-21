## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Forming the "CachSolve" function. This function calculates teh inverse of the "matrix" returned by the "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not changed), then "cacheSolve" function will get the
## inverse calue from the cache else calculate it.

cacheSolve <- function(x, ...) {
	 I <- x$getinverse    #Getting the inverse of the matrix from the cache if the matrix has not changed
	   if(!is.null(I)){
		message("getting cached data")
		return(I)
}
	 data <- x$get()
	 I <- solve(data,...)  #Calculating the inverse of the matrix, if it has changed and not part of the cache
	 X$setinverse(I)
	 I
}

