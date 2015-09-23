//
//  ScheduleTableViewController.swift
//  parius
//
//  Created by Erick Gist on 9/22/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation
import UIKit

class ScheduleTableViewController: UITableViewController {
    
    var schedule: NSArray = NSArray()
    
    var hoursCollection = [Hour]()
    
    var service:HourService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        service = HourService()
        service.getHours {
            (response) in
            //            self.loadHours(response["hours"]! as! NSArray)
            self.loadHours(response)
        }
    }
    
    func loadHours(topics:NSArray) {
        //        for hour in hours {
        //
        //            let hour = hour["Hour"]! as! NSDictionary
        //
        //            var id = Int(hour["id"]! as! String)!
        //
        //            var user_id = Int(topic["user_id"]! as! String)!
        //
        //            var day = Int(hour["day"]! as! String)!
        //
        //            var hr = Int(topic["hr"]! as! String)!
        //        
        //            let taken = hour["taken"]! as! Bool
        //
        //        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        should return schedulle.count
        return 1;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("dateCell", forIndexPath: indexPath)
        return cell;
    }
}