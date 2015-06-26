//
//  ViewController.swift
//  StateButtonDemo
//
//  Created by fu-zhiyang on 6/26/15.
//  Copyright (c) 2015 fu-zhiyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stateButton : StateButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    }
    
}

