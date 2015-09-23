//
//  Topic.swift
//  parius
//
//  Created by Apprentice on 9/22/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation

class Topic {
    var id:Int
    var title:String
    var group_id:Int
    
    init(id:Int, title:String, group_id:Int) {
        self.id = id
        self.title = title
        self.group_id = group_id
    }
    
    //        this should be used if we are going to add topics
//    func toJSON() -> String {
//
//        return ""
//    }
}