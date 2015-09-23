//
//  Settings.swift
//  parius
//
//  Created by Apprentice on 9/22/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation

class Settings {
        
    var viewTopics = "https://localhost:3000/api/v1/groups/topics"
    var viewHours = "https://sheltered-coast-5550.herokuapp.com/api/v1/schedule"

    
    var login = "https://sheltered-coast-5550.herokuapp.com/api/v1/login"
    var logout = "https://sheltered-coast-5550.herokuapp.com/api/v1/logout"
    var getPotentialPairs = "https://sheltered-coast-5550.herokuapp.com/api/v1/availabilities"
    
    
    var sendFavorites = "https://sheltered-coast-5550.herokuapp.com/api/v1/potentialpairs"
    var createTopic = "https://sheltered-coast-5550.herokuapp.com/api/v1/topic.create"
    
}