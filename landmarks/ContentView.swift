//
//  ContentView.swift
//  landmarks
//
//  Created by Alexander Spurlock on 7/10/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .foregroundColor(.orange)
            .multilineTextAlignment(.center)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
