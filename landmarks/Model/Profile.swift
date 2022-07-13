//
//  Profile.swift
//  landmarks
//
//  Created by Alexander Spurlock on 7/11/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "alexspurlock25")
    
    enum Season: String, CaseIterable, Identifiable {
        var id: String { rawValue }
        
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
    }
}
