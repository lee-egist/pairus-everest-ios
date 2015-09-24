//
//  Match.swift
//  parius
//
//  Created by Apprentice on 9/23/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation

class Match {
    var id:Int
    var user1_accepted:Bool
    var user2_accepted:Bool
    var availability1_id:Int
    var availability2_id:Int
    var topic_id:Int
    var hr_id:Int
    
    init(id:Int, user1_accepted:Bool, user2_accepted:Bool, availability1_id:Int, availability2_id:Int, topic_id:Int, hr_id:Int) {
        self.id = id
        self.user1_accepted = user1_accepted
        self.user2_accepted = user2_accepted
        self.availability1_id = availability1_id
        self.availability2_id = availability2_id
        self.topic_id = topic_id
        self.hr_id = hr_id
    }
    //
    //    func toJSON() -> String {
    //            return ""
    //    }
}