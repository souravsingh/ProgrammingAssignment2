## The functions are used to store the value of inverse of a matrix A in S
## 

## This function is used to create a cached inverse matrix.We use 4 functions to finally calculate the value of the matrix:
## set function is used to set the value of the matrix.Get function 

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


##This function will return the inverse of the matrix that was created using
##the previous function (makeCacheMatrix). So, if inverse S of A
## has not been calculated yet, or the matrix A changed recently
## , then it will recalculate the inverse of A. Otherwise it will
## directly return the cached value of the inverse.

cacheSolve <- function(x, ...) {
        S <- A$getinv()
	if (is.null(S)) {
		message('Calculating inverse of Matrix-')
		data <- A$get()
		S <- solve(data, ...)
		A$setinv(S)
	} else {
		message('Returning cached inverse...')
	}
	return(S)
}


##Creating a cachematrix
A <- makeCacheMatrix()
set.seed(1)
A$set(matrix(runif(9, -2, 5), 3))

# The first time, the cacheSolve function computes the inverse
cacheSolve(A)

# Second time,the cacheSolve function returns the cached inverse
cacheSolve(A)

# After changing the matrix, cacheSolve() recomputes the inverse 
A$set(matrix(runif(9, -2, 5), 3))
cacheSolve(A)
