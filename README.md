# placeIn-placeOn


###A Swift UIView extension that simplifies positioning a UIView within or around another UIView such as UILabel, UIButton etc...
*The placeIn... methods help with positioning within another UIView.*

*The placeOn... methods help with positioning around another UIView.*

*Use them both in conjuction.*

Tired of doing something like this every time you need to position a view in the center of a another view?
~~~~
let halfWidthFirst = firstView.frame.width / 2
let halfWidthSecond = secondView.bounds.width / 2
secondView.frame.origin.x = firstView.bounds.origin.x + halfWidthFirst - halfWidthSecond
     
let halfHeightFirst = firstView.frame.height / 2
let halfHeightSecond = secondView.bounds.height / 2
secondView.frame.origin.y = firstView.bounds.origin.y + halfHeightFirst - halfHeightSecond
~~~~
     
Now you can do it in one line like this:
~~~~
secondView.placeInCenter(of: firstView)
~~~~

Or if you want to center in the super view:
~~~~
secondView.placeInCenterOfSuperView()
~~~~

You can even provide and offset (constant)
~~~~
secondView.placeInCenterOfSuperView((offsetX: 20, offsetY: -5)
~~~~



Use placeIn... PlaceOn... methods in conjuction like here (placing one UIView just above the other):
~~~~
secondView.placeInMidX(of: firstView)
secondView.placeOnTop(of: firstView)
~~~~

The extension is provided alongside an Xcode project with some interesting examples.
Any feedback is welcome.
