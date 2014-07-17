## Put comments here that give an overall description of what your
## functions do

## create a matrix data structure as a list containing function to 
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse of the matrix
## get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv.x <- NULL
        set <-function(y) {
                x<<-y
                inv.x <<-NULL 
        }
        get <-function() x
        set.inv <- function(inv) inv.x <<- inv
        get.inv <- function() inv.x
        list(set=set,get=get,
             set.inv=set.inv,
             get.inv=get.inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        x.inv <- x$get.inv()
        if (!is.null(x.inv)) {
                message("getting cached data")
                return(x.inv)
        }
        data <- x$get()
        x.inv <- solve(data)
        x$set.inv(x.inv)
        x.inv
}
