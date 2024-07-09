## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
inv <- NULL
set <- function(y) {
	x <<-y
	inv <<- NULL 
	}
	get <- function()x
	setInverse <- function(inverse) inv<<-inverse
	getInverse <- function() inv
	list(set=set, get=get,
	setInverse= setInverse,
	getInverse = getInverse
	}
	my_matrix <- makeCacheMatrix(matrix(c(1,2,3,4), 2,2))
	cacheSolve(my_matrix)
	cacheSolve(my_matrix
	)