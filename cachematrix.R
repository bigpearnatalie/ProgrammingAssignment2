## Put comments here that give an overall description of what your
## functions do
## the function here is to FULFILL/PRACTICE the cache function of R.
## Write a short comment describing this function
## Adating from the example given in the instruction from assignment 2, 
## changing slight of the origianl code should work this assignment out, 
## I personally overthink this too much, searching like ways to solve inversion of matrix,
## then I realize how to solve inversion is not the key point here



##First is to create a new function/datatype called makeCacheMatrix,
## just slightly change the orignial m short for mean to s short for solve.
## Though I should better make it more clear by changing things into i for inversion.
## anyway the function called solve.



makeCacheMatrix <- function(x = matrix()) {
        
   
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve 
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)


}


## Write a short comment describing this function
## Still slightly change the example from m to s, mean to solve


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        
          s <- x$getsolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data)
        x$setsolve(s)
        s
        
        
}
