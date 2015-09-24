//
//  TopicService.swift
//  parius
//
//  Created by Apprentice on 9/22/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation

class TopicService {

    var settings: Settings!
    
    init() {
        self.settings = Settings()
    }
    
    func getTopics(callback:(NSDictionary) -> ()) {
        request(settings.viewTopics, callback: callback)
    }
    
    func request(url:String, callback:(NSDictionary) -> ()) {
        let nsURL = NSURL(string: url)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(nsURL!, completionHandler: { data, response, error -> Void in
            if (error != nil) {
                print(error!.localizedDescription)
            }
            do {
                let response = try NSJSONSerialization.JSONObjectWithData(data!, options:NSJSONReadingOptions.MutableContainers) as! NSDictionary
                callback(response)
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        })
        task.resume()
    }
}