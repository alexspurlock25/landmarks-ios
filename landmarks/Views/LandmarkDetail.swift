//
//  NavigationDetail.swift
//  landmarks
//
//  Created by Alexander Spurlock on 7/10/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock!")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Something about the park....")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct NavigationDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
