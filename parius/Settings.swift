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
    var baseurl = "https://localhost:3000/api/v1/groups/1"
    var sign_in = "https://localhost:3000/users/sign_in"
    var viewTopics = "https://secure-fjord-3157.herokuapp.com/api/v1/groups/1"
    var viewGroups = "https://localhost:3000/api/v1/users/1/groups"
    var viewHours = "https://secure-fjord-3157.herokuapp.com/api/v1/hours"
    var viewAvailabilities = "https://sheltered-coast-5550.herokuapp.com/api/v1/availabilities"
    var viewMatches = "https://sheltered-coast-5550.herokuapp.com/api/v1/potentialpairs"


    // login routes
    var login = "https://sheltered-coast-5550.herokuapp.com/api/v1/login"
    var logout = "https://sheltered-coast-5550.herokuapp.com/api/v1/logout"
    
    // post routes
    var sendFavorites = "https://sheltered-coast-5550.herokuapp.com/api/v1/potentialpairs"
    var createTopic = "https://sheltered-coast-5550.herokuapp.com/api/v1/topic.create"
    
}