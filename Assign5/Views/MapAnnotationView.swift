//
//  MapAnnotationView.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var annotations: [MapAnnotation<RecipeMapMarker>] // Update annotation type to use RecipeMapMarker

    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: annotations) { annotation in
            MapPin(coordinate: annotation.coordinate)
                .onTapGesture {
                    // Handle tap gesture on the map pin
                }
        }
    }
}

