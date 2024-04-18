//
//  RecipeMapMarker.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI
import MapKit

struct RecipeMapMarker: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let recipe: Recipe

    var body: some View {
        VStack {
            Image(systemName: "mappin")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.red)
            Text(recipe.name)
                .font(.caption)
                .foregroundColor(.black)
        }
    }
}
