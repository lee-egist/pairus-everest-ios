//
//  Pair.swift
//  parius
//
//  Created by Erick Gist on 9/22/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation


class Availability {
    var id:Int
    var user_id:Int
    var topic_id:Int
    var hour_id:Int
    
    init(id:Int, user_id:Int, topic_id:Int, hour_id:Int) {
        self.id = id
        self.user_id = user_id
        self.topic_id = topic_id
        self.hour_id = hour_id
    }
    
    //        this should be used if we are going to add topics
    //    func toJSON() -> String {
    //
    //        return ""
    //    }
}