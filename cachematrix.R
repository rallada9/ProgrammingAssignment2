## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function is used to create a inverse matrix by using the 'solve'
# function operation. This function also stores the calculated inverse matrix for
# use in other functions. 

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setmatrix <- function(solve) m <<- solve
	getmatrix <- function() m
	list(set = set, get = get,
		setmatrix = setmatrix,
		getmatrix = getmatrix)


}


## Write a short comment describing this function
# This function calls the makeCachMaster function. It checks if the inverse has # been calculated and if it has it will get this cached value else it callculates
# the inverse of a matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getmatrix()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
		}
		data <- x$get()
		m <- solve(data, ...)
		x$setmatrix(m)
		return(m)
}
