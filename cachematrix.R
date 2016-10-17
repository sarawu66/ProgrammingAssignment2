## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
                }
        get<-function()x
                setinverse<-function(inverse)m<<-inverse
                        getinverse<-function()m
                               list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


##This function creates a special "matrix", by which you can set a value of the matrix, get the value of the matrix,set the value of its inverse, and get the value of its inverse.

cacheSolve <- function(x, ...) {
        m<-x$getinverse()
        if(!is.null(m){
                message("getting cached data")
                return(m)
                }
           data<-x$get()
           m<-solve(data,...)
           x$setinverse(m)       
}
               ## Return a matrix that is the inverse of 'x'
