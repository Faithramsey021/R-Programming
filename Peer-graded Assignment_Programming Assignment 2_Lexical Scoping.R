> makeVector <-function(x = numeric()) {
+ m <- NULL
+ set <- function(y) {
+     x <<- y
+     m <<- NULL
+ }
+ get <- function() x
+ setmean <-function(mean) m <<- mean
+ list (set = set, get = get,
+       setmean = setmean,
+       getmean = getmean)
+ }
> cachemean <- function(x, ...) {
+ m <- x$getmean()
+ if(!is.null(m)) {
+ message ("getting cached data")
+ return(m)
+ }
+ data <- x$get()
+ m <- mean(data, ...)
+ x$setmean(m)
+ m
+ }
> makeCacheMatrix <- function(x = matrix()) {
+ m <- NULL
+ set <- function(y) {
+     x <<- y
+ }
+ get <- function() x
+ setinverse <- function(inverse) m <<- invr
+ getinverse <- function() m
+ list (set = set, get = get,
+       setinverse = setinverse,
+       getinverse = getinverse)
+ }
> cacheSolve <- function(x, ...) {
+ m <- x$getinverse()
+ if(!is.null(m)) {
+ message("getting cached data")
+ return(m)
+ }
+ mat <- x$get()
+ m <- solve(mat, ...)
+ x$setinverse(m)
+ m
+ }