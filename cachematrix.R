
#Function Starts to create a matix and create list
makeCacheMatrix<-function(x=matrix()){
im<-NULL
set<-function(y){
# use `<<-` to assign a value to an object in an environment
x<<-y
im<<-NULL
}
#get and set matrix and its Inverse
get<-function()x
setim<-function(inverse)
im<<-inverse
getim<-function()im
list(set=set,get=get,
setim=setim,
getim=getim)
}


cacheSolve <- function(x, ...) {
im <- x$getim()
if(!is.null(im)) {
#if inverse is already calculated taking from Cache
message("getting cached data")
return(im)
#otherwise calculate
}
data <- x$get()
im <- solve(data, ...)
x$setim(im)
return(im)
}
