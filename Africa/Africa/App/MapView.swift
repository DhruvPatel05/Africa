//
//  MapView.swift
//  Africa
//
//  Created by Dhruv Patel on 05/07/26.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286,longitude:16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
        
    }()
    let locations: [NationalParkLoaction] = Bundle.main.decode("locations.json")
    // MARK: - BODY
    var body: some View {
        // MARK: - NO BASIC MAP
       // Map(coordinateRegion: $region)
        // MARK: - No2 Advance MAP
        Map(coordinateRegion: $region,annotationItems: locations,annotationContent: {
            item in
            // (A) PIN: OLD style always static
//            MapPin(coordinate: item.location,tint:.accentColor)
            // (B) Marker New Style
//            MapMarker(coordinate: item.location,tint:.accentColor)
            // (C) Custom Basic Annotation
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32,alignment:.center)
            }//: Annotation
            })
    }
}

// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView().previewDevice("iPhone 11 Pro")
    }
}
