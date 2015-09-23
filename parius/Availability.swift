//
//  Availability.swift
//  parius
//
//  Created by Apprentice on 9/23/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation

class Availability {
    var id:Int
    var user_selected_topic_id:Int
    var hour_id:Int
    var taken:Bool

    
    init(id:Int, user_selected_topic_id:Int, hour_id:Int, taken:Bool) {
        self.id = id
        self.user_selected_topic_id = user_selected_topic_id
        self.hour_id = hour_id
    }
//    func toJSON() -> String {
//        return ""
//    }
}