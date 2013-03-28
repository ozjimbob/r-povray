##scene test

sc=Scene()
l1=Light(c(14,5,-15),Colour(1,1,1))
l2=Light(c(-14,15,-10),Colour(1,1,0))
c1=Camera(c(3,10,-15),c(3,2,2))
green=Color(0,1,0)
red=Color(1,0,0)
cyl=Cylinder(c(3,0,2),c(3,7,2),2,col=green)
cy2=Cylinder(c(1,1,2),c(8,1,2),1,col=red)

sc$push(l1)
sc$push(l2)
sc$push(c1)
sc$push(cyl)
sc$push(cy2)
sc$save()
sc$render()