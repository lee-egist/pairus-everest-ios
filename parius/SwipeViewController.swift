//
//  SwipeViewController.swift
//  parius
//
//  Created by Erick Gist on 9/20/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation
import UIKit

class SwipeViewController: UIViewController, UIGestureRecognizerDelegate{
    
    override func viewDidLoad() {
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        leftSwipe.direction = .Left
        rightSwipe.direction = .Right
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
    }
    
    func handleSwipes(sender:UISwipeGestureRecognizer) {
        if (sender.direction == .Left) {
            print("Swipe Left")
        }
        
        if (sender.direction == .Right) {
            print("Swipe Right")
        }
    }
}