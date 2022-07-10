//
//  MapView.swift
//  landmarks
//
//  Created by Alexander Spurlock on 7/10/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        // $ = pass a binding (a ref)
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ ccoordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
