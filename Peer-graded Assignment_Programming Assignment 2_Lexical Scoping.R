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
> makeCacheMatrix <- function(x=matrix())
+ }
Error: unexpected '}' in:
"makeCacheMatrix <- function(x=matrix())
}"
> makeCacheMatrix <- function(x=matrix()) }
Error: unexpected '}' in "makeCacheMatrix <- function(x=matrix()) }"
> makeCacheMatrix <- function(x=matrix) }
Error: unexpected '}' in "makeCacheMatrix <- function(x=matrix) }"
> makeCacheMatrix <- function(x=matrix) {
+ }
> cacheSolve <- makeCacheaMatrix {
Error: unexpected '{' in "cacheSolve <- makeCacheaMatrix {"
> cacheSolve
Error: object 'cacheSolve' not found
> cacheSolve <- function(x, ...) {
+ }
> makeCacheMatrix <- function(x=matrix()){
+ invr<-NULL
+ set<-function(y){
+ x<<-y
+ invr<<-NULL
+ }
+ }
> get<-function() x
> get<-function() x {
Error: unexpected '{' in "get<-function() x {"
> get<-function() x
> setinverse<-fucntion(inverse) invr<<-inverse
Error: unexpected symbol in "setinverse<-fucntion(inverse) invr"
> set <-function(inverse) invr<<-inverse
> get <-function()invr
> list(set=set, get=get, setinverse=setinverse, getinverse = getinverse)
$set
function(inverse) invr<<-inverse

$get
function()invr

$setinverse
function(inverse) invrs <- inverse

$getinverse
function() invrs

> cacheSolve <- function(x, ...) {
+ invr<= x$getinverse()
+ if(!is.null(invr)) {
+ message("Getting Cached Data:-")
+ return(invr)
+ }
+ matrx<-x$get()
+ invr<-solve(matrx, ...)
+ x$setinverse(invr)
+ invr
+ }
> solve(x)
Error in solve.default(x) : 'a' (2 x 1) must be square
> solve
function (a, b, ...) 
UseMethod("solve")
<bytecode: 0x000002826ef6c450>
<environment: namespace:base>


