
## Creates a special 'matrix' object that can cache its inverse for efficient retrieval

makeCacheMatrix <- function(x = matrix()) {

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


##this function computes the inverse of the special 'matrix' returned by MakeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

		inv <- x$getInverse()
		if(is.null(inv)) {
			message ("getting cached data")
			return(inv)
			}
			mat <- x$get()
			inv <- solve(mat, ...)
			x$setInverse(inv)
			inv
			}
			
			my_matrix <- makeCacheMatrix(matrix(c(1,2,3,4),2,2))
			cacheSolve(my_matrix)
			## retrieving the cached inverse of my_matrix
			cacheSolve(my_matrix)