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
    
    var hoursCollection = [Hour]()
    
    var service:HourService!
    
    override func viewWillAppear(animated:Bool) {
        super.viewWillAppear(animated)
        
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
    

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hoursCollection.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dateCell", forIndexPath: indexPath) as UITableViewCell
        
        let hour = hoursCollection[indexPath.row]
        cell.textLabel?.text = String(hour.day)
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}