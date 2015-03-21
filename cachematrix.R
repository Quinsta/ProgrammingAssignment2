## The first function will find the inverse of a matrix and cache the result. The second function will check to see if the 
## result has been calulated by the first function to use that result otherwise do the calculation itself.

## This function will find the inverse of the matrix entered and cache the result for future use. 

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  setsolve <- function(solve) m <<-solve
  getsolve <- function()m
  list (set=set,get=get,
        setsolve=setsolve,
        getsolve=getsolve)
}


## This function checks to see if the variable 'x' has been calculated if so present the result if not calculate the result.

cacheSolve <- function(x, ...) {
  m <-x$getsolve()
  
  if(!is.null(m)){
    message("getting cached data")
    return(m)
    }
  
  data <- x$get()
  m <- solve(data,...)
  x$setsolve(m)
  m
}
