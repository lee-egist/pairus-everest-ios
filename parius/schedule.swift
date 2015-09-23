//
//  schedule.swift
//  parius
//
//  Created by Erick Gist on 9/22/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation

class Schedule {
    var id:Int
    var year:Int
    var month:Int
    var day:Int
    var hour:Int
    
    init(id:Int, year:Int, month:Int, day:Int, hour:Int) {
        self.id = id
        self.year = year
        self.month = month
        self.day = day
        self.hour = hour
    }
    
    //        this should be used if we are going to add topics
    //    func toJSON() -> String {
    //
    //        return ""
    //    }
}