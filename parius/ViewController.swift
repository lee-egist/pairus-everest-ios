//
//  ViewController.swift
//  parius
//
//  Created by Erick Gist on 9/19/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var handle: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonPressed() {
        if (handle.text != nil && password.text != nil){
            
        }
//        /users/sign_in(.:format)
        performSegueWithIdentifier("login", sender: nil)
    }
}

