//
//  Hour.swift
//  parius
//
//  Created by Apprentice on 9/23/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation

class Hour {
    var id:Int
    var user_id:Int
    var day:Int
    var hr:Int
    var taken: Bool
    
    init(id:Int, user_id:Int, day:Int, hr:Int, taken:Bool) {
        self.id = id
        self.user_id = user_id
        self.day = day
        self.hr = hr
        self.taken = taken
    }
    
    func toJSON() -> String {
            return ""
    }
}