## R-POVRAY

# Scene class
Scene=function(){
  self=list(
    contents=c(),
    add=function(text){
      self$contents=c(self$contents,text)
    },
    save=function(path){
      f=file(path,"w")
      for(line in self$contents){
        cat(line,file=f,sep="\n")
      }
       close(f)
    },
    push=function(object){
      self$contents=c(self$contents,object$format())
    }
    )
  self <- list2env(self)
  class(self) <- "Script"
  return(self) 
}  

# Light class
Light=function(location=c(x,y,z),colour=c(1,1,1)){
  self=list(
    location=location,
    colour=colour,
    format=function(){
      x=self$location[1]
      y=self$location[2]
      z=self$location[3]
      r=self$colour[1]
      g=self$colour[2]
      b=self$colour[3]
      text=paste("light_source {  <",x,",",y,",",z,"> color <",r,",",g,",",b,">}",sep="")
      text
    }
  )
  self <- list2env(self)
  class(self) <- "Light"
  return(self) 
}

# Camera class
Camera=function(location=c(x,y,z),looking=c(x2,y2,z2)){
  self=list(
    location=location,
    looking=looking,
    format=function(){
      x=self$location[1]
      y=self$location[2]
      z=self$location[3]
      x2=self$looking[1]
      y2=self$looking[2]
      z2=self$looking[3]
      text=paste("camera { location <",x,",",y,",",z,"> look_at <",x2,",",y2,",",z2,"> right x*image_width/image_height}",sep="")
      text
    }
  )
  self <- list2env(self)
  class(self) <- "Camera"
  return(self) 
}
