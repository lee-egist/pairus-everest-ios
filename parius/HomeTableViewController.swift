//
//  HomeTableViewController.swift
//  parius
//
//  Created by Erick Gist on 9/20/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation
import UIKit

class HomeTableViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override     func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("cell")
            cell?.textLabel?.text = "Hi"
            return cell!
    }
}