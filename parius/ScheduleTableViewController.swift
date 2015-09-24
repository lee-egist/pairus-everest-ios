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
            self.loadHours(response["hours"]! as! NSArray)
//            self.loadHours(response)
        }
    }
    
    func loadHours(hours:NSArray) {
        for hour in hours {
            print(hour)
            var id = hour["id"]! as! Int
            var user_id = hour["user_id"]! as! Int
            var day = hour["day"]! as! Int
            var hr = hour["hr"]! as! Int
            let taken = hour["taken"]! as! Bool
            var hourObj = Hour(id: id, user_id: user_id, day: day, hr: hr, taken: taken)

            hoursCollection.append(hourObj)
            dispatch_async(dispatch_get_main_queue()) {
                self.tableView.reloadData()
            }

        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hoursCollection.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("dateCell", forIndexPath: indexPath)
        return cell;
    }
}