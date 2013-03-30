r-povray
========

An R Package to interface with the POVRay raytracing system.
![Demonstration Image](http://i.imgur.com/ckhjJXZ.png)

Introduction
----------

R-povray (R package name **povray**) aims to allow R users to produce 3D rendered graphics in the [POVRay](http://www.povray.org) raytracing software.  Initially, classes will be provided to create basic POVRay objects (lights, cameras, primitives, textures).  Further higher-level classes to render graphs will be the ultimate aim.  The page does not aim to provide an interface to *all* POVRay functions, but does aim to make basic, commonly-used POVRay objects available in an easy to use manner from within R.

Structure
---------
The package provides a range of environment-based classes, for example a **Scene** class that brings together the 3D objects, writes POVRay source files and rengers them, a **Light** class that allows placement of lights of a certain colour in a certain location, a **Box** class, a **Camera** class etc.

Scenes and objects are created as follows:

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

This will create a scene with a camera, a two lights, and red and green cylinders.
