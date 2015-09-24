//
//  MatchService.swift
//  parius
//
//  Created by Apprentice on 9/23/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation

class MatchService {
    
    var settings: Settings!
    
    init() {
        self.settings = Settings()
    }
    
    func getMatches(callback:(NSArray) -> ()) {
        request(settings.viewMatches, callback: callback)
    }
    
    func request(url:String, callback:(NSArray) -> ()) {
        let nsURL = NSURL(string: url)
        
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
}