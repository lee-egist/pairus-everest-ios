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
    var settings: Settings = Settings()
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
    
    func getTopics(callback:(NSArray) -> ()) {
        request(settings.login, callback: callback)
    }
    
    func request(url:String, callback:(NSArray) -> ()) {
        
        let nsURL = NSURL(string: url)
/*        this is where we set the httpbody that is posted as params
        handle.text and password.text coverted to NSDATA
        var HTTPBody: NSData?
        let theRequest: NSMutableURLRequest = NSMutableURLRequest
*/
        let task = NSURLSession.sharedSession().dataTaskWithURL(nsURL!, completionHandler: { data, response, error -> Void in
            if (error != nil) {
                print(error!.localizedDescription)
            }
            do {
                let response = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.MutableContainers) as! NSArray
                callback(response)
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        })
        task.resume()
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


