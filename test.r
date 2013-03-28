##scene test

sc=Scene()
l1=Light(c(14,5,-15),Colour(1,1,1))
c1=Camera(c(3,5,-15),c(3,0,2))
green=Color(0,1,0)
cyl=Cylinder(c(3,0,2),c(3,7,2),2,col=green)

sc$push(l1)
sc$push(c1)
sc$push(cyl)
sc$save()
sc$render()