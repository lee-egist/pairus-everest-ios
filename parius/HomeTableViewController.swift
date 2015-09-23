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
    

    var viewTopics = "url"
    
    var topicsCollection = [Topic]()
    
    var service:TopicService!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        service = TopicService()
        service.getTopics {
            (response) in
//            self.loadTopics(response["topics"]! as! NSArray)
            self.loadTopics(response)
        }
    }
    
    func loadTopics(topics:NSArray) {
//        for topic in topics {
        
//            var topic = topic["Topic"]! as! NSDictionary
            
//            var id = Int(topic["id"]! as! String)!
//            
//            var title = topic["title"]! as! String!
//            
//            var group_id = Int(topic["group_id"]! as! String)!
            
            
            
//        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("cell")
            cell?.textLabel?.text = "Hi"
            return cell!
    }
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        if (tableView.cellForRowAtIndexPath(indexPath)!.accessoryType == UITableViewCellAccessoryType.None){
            tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.Checkmark
        } else {
            tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.None
        }
//        get the topic id for the selected row and add it to an array
    }
}