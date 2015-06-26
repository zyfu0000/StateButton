//
//  StateButton.swift
//  StateButtonDemo
//
//  Created by fu-zhiyang on 6/26/15.
//  Copyright (c) 2015 fu-zhiyang. All rights reserved.
//

import UIKit

typealias StateButtonClosure = (Int) -> ()

class StateButton: UIButton {

    var titles = [String]() {
        didSet {
            assert(titles.count > 0 || images.count > 0, "titles and images can't both be empty")
            setTitle(titles[0], forState: .Normal)
        }
    }
    var titleColors = [UIColor]() {
        didSet {
            if titleColors.count > 0 {
                setTitleColor(titleColors[0], forState: .Normal)
            }
        }
    }
    var images = [UIImage]() {
        didSet {
            assert(titles.count > 0 || images.count > 0, "titles and images can't both be empty")
            setImage(images[0], forState: .Normal)
        }
    }
    var closures    = [StateButtonClosure]()
    var transitions = [(String, String)]()
    
    private var index : Int = 0
    
    init () {
        super.init(frame: CGRectZero)
        addTouchHandler()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addTouchHandler()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addTouchHandler()
    }
    
    private func addTouchHandler() {
        addTarget(self, action: "touchUpInside", forControlEvents: .TouchUpInside)
    }
    
    @objc private func touchUpInside() {
        if closures.count > 0 {
            closures[index](index)
        }
        
        if transitions.count > 0 {
            let _index = index % transitions.count
            layer.removeAnimationForKey("statebutton_transition")
            var transition = CATransition()
            transition.type = transitions[_index].0
            transition.subtype = transitions[_index].1
            layer.addAnimation(transition, forKey: "statebutton_transition")
        }
        
        if titles.count > images.count {
            index = (index + 1) % titles.count
        }
        else {
            index = (index + 1) % images.count
        }
        
        if titles.count > 0 {
            let _index = index % titles.count
            setTitle(titles[_index], forState: .Normal)
        }
        
        if titleColors.count > 0 {
            let _index = index % titleColors.count
            setTitleColor(titleColors[_index], forState: .Normal)
        }
        
        if images.count > 0 {
            let _index = index % images.count
            setImage(images[_index], forState: .Normal)
        }
    }
}
