//
//  ProfileSummary.swift
//  landmarks
//
//  Created by Alexander Spurlock on 7/11/22.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(profile.username)
                .bold()
                .font(.title)
            
            Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
            Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
            Text("Goal Date: ") + Text(profile.goalDate, style: .date)
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
