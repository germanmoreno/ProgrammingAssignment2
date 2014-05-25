## Put comments here that give an overall description of what your
## functions do

## primero se crea la función para hacer la matriz en cache
   makeCacheMatrix <- function(x = matrix()) {
      require("MASS")
      m_inv <- NULL
      set <- function(y) {
      x <<- y
      m_inv <<- NULL
    }
    get <- function() x
    setinverse <- function(ginv) m_inv <<- ginv
    getinverse <- function() m_inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
    ## segundo se crea la funcion para solucionar la matriz
    cacheSolve <- function(x, ...) {
          require("MASS")
        m_inv <- x$getinverse()
        require("MASS") 
        m_inv <- x$getinverse() 
          if(!is.null(m_inv)) {
            message("getting cached data")
            return(m_inv)}
}
