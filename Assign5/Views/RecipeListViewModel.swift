//
//  RecipeListViewModel.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI
import MapKit

class RecipeListViewModel: ObservableObject {
    let country: Country
    @Published var recipes: [Recipe] = []
    @Published var annotations: [MapAnnotation<RecipeMapMarker>] = [] // Use RecipeMapMarker here

    init(country: Country) {
        self.country = country
    }

    func fetchRecipes() {
        // Logic to fetch recipes based on selected country
        // For demonstration, let's assume we have some dummy data
        recipes = DummyData.recipes(for: country)
        annotations = recipes.map { recipe in
            MapAnnotation(coordinate: recipe.coordinate) {
                RecipeMapMarker(recipe: recipe)
            }
        }
    }
}
