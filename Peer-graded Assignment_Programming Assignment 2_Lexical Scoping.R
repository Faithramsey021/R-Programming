 makeVector <- function(x = numeric()) {
+         m <- NULL
+         set <- function(y) {
+                 x <<- y
+                 m <<- NULL
+         }
+         get <- function() x
+         setmean <- function(mean) m <<- mean
+         getmean <- function() m
+         list(set = set, get = get,
+              setmean = setmean,
+              getmean = getmean)
+ }
> cachemean <- function(x, ...) {
+         m <- x$getmean()
+         if(!is.null(m)) {
+                 message("getting cached data")
+                 return(m)
+         }
+         data <- x$get()
+         m <- mean(data, ...)
+         x$setmean(m)
+         m
+ }
> makeCacheMatrix()
Error in makeCacheMatrix() : could not find function "makeCacheMatrix"
> makeCacheMatrix(x)
Error in makeCacheMatrix(x) : could not find function "makeCacheMatrix"
> makeCacheMatrix
Error: object 'makeCacheMatrix' not found
> makeCacheMatrix <- function(x = matrix()) {
+ }
> 
> cacheSolve <- function(x, ...) {
+ }
> solve(x)
Error in solve.default(x) : 'a' (2 x 1) must be square
> solve
function (a, b, ...) 
UseMethod("solve")
<bytecode: 0x000001a2e9a9de10>
<environment: namespace:base>
> solve(a)
Error in solve(a) : object 'a' not found
> solve(2 x 1)
Error: unexpected symbol in "solve(2 x"
> solve(2(1))
Error in solve(2(1)) : attempt to apply non-function
> 
