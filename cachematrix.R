## The functions are used to store the value of inverse of a matrix A in S
## 

## This function is used to create a cached inverse matrix.We use 4 functions to finally calculate the value of the matrix:
##

makeCacheMatrix <- function(x = matrix()) {
        S <- NULL
	set <- function(B)
	{
		A <<- B
		S <<- NULL
	}
	get <- function() A
	setinv <- function(B) S <<- B
	getinv <- function() S
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
