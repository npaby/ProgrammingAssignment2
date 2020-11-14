## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This functions creates a matrix and outputs the matrix to help the cacheSolve function.
makeCacheMatrix <- function(x = matrix()) {
#initialization
        k <- NULL
#create a function to set the matix
        set <- function(y) {
                x <<- y
                k <<- NULL
        }
#create a function to get the matix
        get <- function() x
#create a function to set the inverse of the matrix
        setinv <- function(inv) k <<- inv
#create a function to get the inverse of the matrix
        getinv <- function() k
#create a list of the methods created.\
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function
## The cacheSolve function returns the matrix using the output of the makeCacheMatrix

cacheSolve <- function(x, ...) {
#Get the value of the inverse
        k <- x$getinv()
#Verification
        if(!is.null(k)) {
                message("getting cached data")
                return(k)
        }
#Get the matrix
        data <- x$get()	
#Solve the matrix with the built-i function
        k <- solve(data, ...)
#Set the inverse
        x$setinv(k)
#Return the matrix
        k

}
