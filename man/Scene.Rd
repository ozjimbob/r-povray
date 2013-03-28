\name{Scene}
\alias{Scene}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Construct POVRay Scene object.
}
\description{
 Constructs an R object that holds POVRay object descriptions, and methods to save and render the scene.
}
\usage{
myScene = Scene()

## Method to save scene to a .POV file.
myScene$save(path = filename)

## Method to push an object into the scene.
myScene$push(object = object)

## Method to add arbitrary code to scene.
myScene$add(text = text)

## Method to render scene in POVRay.
myScene$render(width = 640, height=400)
}
%- maybe also 'usage' for other objects documented here.
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns an environment of class Scene.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Grant Williamson (g.williamson@gmail.com)
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
myScene = Scene()
myScene$push(light_1)
myScene$push(camera_1)
myScene$add("background{color rbg<1,1,1>}")
myScene$push(cylinder)
myScene$save("scene.pov")
myScene$render(w=800,h=600)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
