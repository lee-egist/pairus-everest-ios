//
//  ViewController.swift
//  parius
//
//  Created by Erick Gist on 9/19/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var tableview: UITableView?

    var settings: Settings = Settings()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview?.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0);
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonPressed() {
        if email.text != nil && password.text != nil{
        // set up the base64-encoded credentials
            let username: String = email.text!
            let passwrd: String = password.text!
        let loginString = NSString(format: "%@:%@", username, passwrd)
        let loginData: NSData = loginString.dataUsingEncoding(NSUTF8StringEncoding)!
            let base64LoginString = loginData.base64EncodedDataWithOptions(NSDataBase64EncodingOptions.Encoding64CharacterLineLength)
        
        // create the request
        let url = NSURL(string: "https://secure-fjord-3157.herokuapp.com/api/v1/matches")
        let request = NSMutableURLRequest(URL: url!)
        request.HTTPMethod = "GET"
        request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        
        // fire off the request
        // make sure your class conforms to NSURLConnectionDelegate
        let urlConnection = NSURLConnection(request: request, delegate: self)
//        /users/sign_in(.:format)
        urlConnection!.start()
        performSegueWithIdentifier("login", sender: nil)
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        /*
        This is where we set the values for the the next view we are showing
        in our case schedule view

        let stvc = segue.destinationViewController as! ScheduleTableViewController
        stvc.schedule = [:]
        */
    }
}


