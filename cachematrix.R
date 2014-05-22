## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(x) m <<- solve(x)
        getinverse <- function() 
        {
        m <<- solve(x)
        m
        }
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        data <- x$get()
        m <<- matrix(, nrow(data), ncol(data))
        m <<- solve(data, ...)
         if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        x$setsolve(data)
        m 
}
