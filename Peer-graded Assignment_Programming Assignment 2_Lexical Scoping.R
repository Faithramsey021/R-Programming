 makeVector <- function(x = numeric()) {
+ m <- NULL
+ set <- function(y) {
+     x <<- y
+     m <<- NULL
+ }
+ 
+ get <- function() x
+ setmean <- function(mean) m <<- mean
+ getmean <- function() m
+ list(set = set, get = get,
+     setmean = setmean,
+     getmean = getmean)
+ }
> cachemean <- function(x, ...) {
+ m <- x$getmean()
+ if(!is.null(m)) {
+     message("getting cached data")
+     return(m)
+ }
+ data <- x$get()
+ m <- mean(data, ...)
+ x$setmean(m)
+ m
+ }

> makeCacheMatrix <- function(x=matrix) {
+ }
> cacheSolve <- function(x, ...) {
+ }
> makeCacheMatrix <- function(x=matrix()){
+ invr<-NULL
+ set<-function(y){
+ x<<-y
+ invr<<-NULL
+ }
+ }
> get <- function() x
> setinverse <- function(inverse) m <<- inverse
> getinverse <- function() m
> list(set = set, get = get,
+      setinverse = setinverse,
+      getinverse = getinverse)
$set
function(inverse) invr<<-inverse

$get
function() x

$setinverse
function(inverse) m <<- inverse

$getinverse
function() m

> cacheSolve <- function(x, ...) {
+ m<= x$getinverse()
+ if(!is.null(m)) {
+ message("Getting Cached Data:-")
+ return(m)
+ }
+ matrx<-x$get()
+ m<-solve(matrx, ...)
+ x$setinverse(m)
+ m
+ }
> solve
function (a, b, ...) 
UseMethod("solve")
<bytecode: 0x0000026651b753b8>
<environment: namespace:base>
