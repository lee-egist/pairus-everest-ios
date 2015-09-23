//
//  Settings.swift
//  parius
//
//  Created by Apprentice on 9/22/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation

class Settings {
  
    // get routes
    var viewTopics = "https://localhost:3000/api/v1/groups/topics"
    var viewHours = "https://sheltered-coast-5550.herokuapp.com/api/v1/schedule"
    var viewAvailabilities = "https://sheltered-coast-5550.herokuapp.com/api/v1/availabilities"
    var viewMatches = "https://sheltered-coast-5550.herokuapp.com/api/v1/potentialpairs"


    // login routes
    var login = "https://sheltered-coast-5550.herokuapp.com/api/v1/login"
    var logout = "https://sheltered-coast-5550.herokuapp.com/api/v1/logout"
    
    // post routes
    var sendFavorites = "https://sheltered-coast-5550.herokuapp.com/api/v1/potentialpairs"
    var createTopic = "https://sheltered-coast-5550.herokuapp.com/api/v1/topic.create"
    
}