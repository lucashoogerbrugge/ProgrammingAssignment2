## Put comments here that give an overall description of what your
## functions do

## set and get the value of matrix
makeCacheMatrix <- function(x = matrix()) {
j<- NULL
set <- function(y){
        x <<- y
        j <<- NULL
}
get <- function()x

## set and get the inverse of matrix
setinverse <- function(solve) j <<- solve
getinverse <- function () j

list(set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse

## returns inverse of x

cacheSolve <- function(x, ...) {
j <- x$inverse()
## check for matrix
if(!is.null(j)){
        message("getting cached data")
        return(j)
}
##ifnot
        data <- x$get()
        j <- solve(data, ...)
        x$setinverse(j)
        j
}
