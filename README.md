# placeIn-placeOn


## A group of Swift UIView extensions that simplify frame-based positioning of a UIView within or around another UIView.
*The placeIn... methods help with positioning within another UIView.*

*The placeOn... methods help with positioning around another UIView.*

*You can use them both in conjuction.*

Tired of doing something like this every time you need to position a UIView in, say, the bottom-right of another UIView?
~~~~
let firstWidth = firstView.frame.width
let secondWidth = secondView.bounds.width
secondView.frame.origin.x = firstView.frame.origin.x + firstWidth - secondWidth

let firstHeight = firstView.frame.height
let secondHeight = secondView.bounds.height
secondView.frame.origin.y = firstView.frame.origin.y + firstHeight - secondHeight
~~~~
     
Now you can do it in one line like this:
~~~~
secondView.placeInBottomRight(of: firstView)
~~~~

Or if you want to center in the super view:
~~~~
secondView.placeInCenterOfSuperView()
~~~~

You can even provide an offset (constant):
~~~~
secondView.placeInCenterOfSuperView((offsetX: 20, offsetY: -5)
~~~~

Use placeIn... PlaceOn... methods in conjuction like here (placing one UIView centered just above the other):
~~~~
secondView.placeInMidX(of: firstView)
secondView.placeOnTop(of: firstView)
~~~~

There are many more placeIn... placeOn... methods.

The extensions are provided alongside an Xcode project with some interesting examples.
Any feedback is welcome.
