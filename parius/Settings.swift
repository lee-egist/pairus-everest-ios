//
//  Settings.swift
//  parius
//
//  Created by Apprentice on 9/22/15.
//  Copyright © 2015 com.RAREStudios. All rights reserved.
//

import Foundation

class Settings {
//    get requests
    var viewTopics = "https://api.github.com/users/mralexgray/repos"
//    var viewTopics = "https://sheltered-coast-5550.herokuapp.com/api/v1/topics"
    var login = "https://sheltered-coast-5550.herokuapp.com/api/v1/login"
    var logout = "https://sheltered-coast-5550.herokuapp.com/api/v1/logout"
    var getSchedule = "https://sheltered-coast-5550.herokuapp.com/api/v1/schedule"
    var getPotentialPairs = "https://sheltered-coast-5550.herokuapp.com/api/v1/availabilities"
//    post request
    var sendFavorites = "https://sheltered-coast-5550.herokuapp.com/api/v1/potentialpairs"
    var createTopic = "https://sheltered-coast-5550.herokuapp.com/api/v1/topic.create"
    
}