# StateButton

Subclass UIButton with different states

![StateButton](/demo.gif)

## How to use

```swift
var stateButton : StateButton!
stateButton.titles = ["facebook"]
stateButton.images = [UIImage(named: "icon_login_facebook")!, UIImage(named: "icon_login_twitter")!, UIImage(named: "icon_login_mail")!]
stateButton.titleColors = [UIColor.redColor(), UIColor.greenColor(), UIColor.blueColor()]
stateButton.closures = ([ { (index) -> () in
        println("State \(index)")
    },  
    { (index) -> () in
        println("State \(index)")
    },
    { (index) -> () in
        println("State \(index)")
    }])
stateButton.transitions = [(kCATransitionPush, kCATransitionFromTop), (kCATransitionMoveIn, kCATransitionFromLeft), (kCATransitionReveal, kCATransitionFromRight)]
```

## Installation

Use cocoapods  

``` ruby
pod 'StateButton'
```

## License  
MIT
