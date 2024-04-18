//
//  RecipeView.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI
import MapKit

// Wrapper struct to conform to Identifiable
struct CapitalCityWrapper: Identifiable {
    let id = UUID()
    let capitalCity: CapitalCity
}

struct MapView: View {
    let capitalCities: [CapitalCity]
    @Binding var selectedCity: CapitalCity?
    @Binding var isShowingCityDetails: Bool

    var body: some View {
        let cityWrappers = capitalCities.map { CapitalCityWrapper(capitalCity: $0) }

        GeometryReader { geometry in
            Map(coordinateRegion: .constant(
                MKCoordinateRegion(
                    center: CLLocationCoordinate2D(latitude: 0, longitude: 0),
                    span: MKCoordinateSpan(latitudeDelta: 120, longitudeDelta: 120)
                )
            ), annotationItems: cityWrappers) { cityWrapper in
                MapAnnotation(coordinate: cityWrapper.capitalCity.coordinate) {
                    Image(systemName: "mappin")
                        .foregroundColor(.red)
                        .onTapGesture {
                            selectedCity = cityWrapper.capitalCity
                            DispatchQueue.main.async {
                                isShowingCityDetails = true
                            }
                        }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}
