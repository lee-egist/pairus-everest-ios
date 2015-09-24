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
    
    
    var topicsCollection = [Topic]()
    
    var service:TopicService!
    
    override func viewWillAppear(animated:Bool) {
        super.viewWillAppear(animated)
        
        service = TopicService()
        service.getTopics {
            (response) in
            self.loadTopics(response["topics"]! as! NSArray)
//            self.loadTopics(response)
        }
    }
    
    func loadTopics(topics:NSArray) {
        topicsCollection.removeAll(keepCapacity: true)
        for topic in topics {
            var id =  topic["id"] as! Int
            var title = topic["title"]! as! String
            var group_id = topic["group_id"]! as! Int
            var topicObj = Topic(id: id, title: title, group_id: group_id)

            topicsCollection.append(topicObj)
//
            dispatch_async(dispatch_get_main_queue()) {
                self.tableView.reloadData()
            }
        }
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topicsCollection.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
            let cell = self.tableView.dequeueReusableCellWithIdentifier("cell")
            cell?.textLabel?.text = topicsCollection[indexPath.row].title
//            cell?.textLabel?.text = "Hi"
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