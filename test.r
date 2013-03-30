##scene test

# Define scene, default background colour
sc=Scene()

# Place some lights and cameras
l1=Light(c(14,5,-15),Colour(1,1,1))
l2=Light(c(-14,15,-10),Colour(1,1,0))
c1=Camera(c(3,12,-20),c(3,2,2))

# Define two colours, and a simple reflective texture
green=Color(0,1,0)
red=Color(1,0,0)
shinyt=Texture("finish{reflection 0.5}")

# Place 30 random green poles with spheres.
for(idx in 1:30){
  x=rnorm(1,0,10)
  z=rnorm(1,0,10)
  y=rnorm(1,3,3)
  cyl = Cylinder(c(x,0,z),c(x,y,z),0.3,col=green,tex=shinyt)
  sph= Sphere(c(x,y,z),1,col=green,tex=shinyt)
  sc$push(cyl)
  sc$push(sph)
}

# Place 20 random red poles
for(idx in 1:20){
  x=rnorm(1,0,7)
  z=rnorm(1,0,7)
  y=rnorm(1,6,3)
  cyl = Cylinder(c(x,0,z),c(x,y,z),0.5,col=red)
  sc$push(cyl)
}

# Box for level
half_grey=Colour(.6,.6,.6,.6)
b=Box(c(-20,-0.1,-10),c(20,0.1,10),col=half_grey)
sc$push(b)

# Push in the lights and camera as well, save and render the scene.
sc$push(l1)
sc$push(l2)
sc$push(c1)
sc$save()
sc$render(aa=T)