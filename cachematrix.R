## these functions creat a matrix and chaches its inverse

##the function to creat the matrix, set and get its value, set and get the value of its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
            x <<- y
            m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
       
}
## the function to creat the inverse of the Matrix
cacheSolve <- function(x, ...) {
   m <- x$getinverse()
   if(!is.null(m)) {
        message("getting cached data")
        return(m)
     
   }
   data <- x$get()
   m <- solve(data, ...)
   x$setinverse(m)
   m
   
}







    

