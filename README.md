r-povray
========

An R Package to interface with the POVRay raytracing system.

Introduction
----------

R-povray (R package name **povray**) aims to allow R users to produce 3D rendered graphics in the [POVRay](http://www.povray.org) raytracing software.  Initially, classes will be provided to create basic POVRay objects (lights, cameras, primitives, textures).  Further higher-level classes to render graphs will be the ultimate aim.  The page does not aim to provide an interface to *all* POVRay functions, but does aim to make basic, commonly-used POVRay objects available in an easy to use manner from within R.

Structure
---------
The package provides a range of environment-based classes, for example a **Scene** class that brings together the 3D objects, writes POVRay source files and rengers them, a **Light** class that allows placement of lights of a certain colour in a certain location, a **Box** class, a **Camera** class etc.

Scenes and objects are created as follows:

    myScene = Scene()
    light1 = Light(location=c(10,10,10),colour=c(1,1,0))
    camera = Camera(location=c(5,5,-5),look_at=c(5,0,0))
    box1 = Box(c(4,0,0),c(6,5,2),color=c(1,0,0))
    light1$push(myScene)
    camera$push(myScene)
    box1$push(myScene)
    myScene$save("myfile.pov")
    myScene$render()

This will create a scene with a camera, a yellow light, and a red box.
