//
//  CapitalCity.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import Foundation
import CoreLocation

struct CapitalCity {
    let name: String
    let coordinate: CLLocationCoordinate2D
    let recipeName: String
    let recipeDescription: String
    let recipeSteps: [String] // Array of recipe steps
}

extension CapitalCity {
    static let london = CapitalCity(
        name: "London",
        coordinate: CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278),
        recipeName: "Fish and Chips",
        recipeDescription: "A classic British dish consisting of battered and fried fish served with deep-fried potato chips.",
        recipeSteps: [
                    "Prepare the fish by dipping it in batter.",
                    "Fry the fish until golden brown and crispy.",
                    "Serve the fish with freshly fried potato chips."
                ]
    )
    
    static let rome = CapitalCity(
        name: "Rome",
        coordinate: CLLocationCoordinate2D(latitude: 41.9028, longitude: 12.4964),
        recipeName: "Spaghetti Carbonara",
        recipeDescription: "A traditional Italian pasta dish made with eggs, cheese, pancetta, and black pepper.",
        recipeSteps: [
                    "Cook spaghetti according to package instructions.",
                    "In a separate pan, cook pancetta until crispy.",
                    "Mix cooked spaghetti with beaten eggs, grated cheese, and cooked pancetta.",
                    "Season with black pepper and serve immediately."
                ]
    )
    
    static let newYork = CapitalCity(
        name: "New York",
        coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060),
        recipeName: "New York Cheesecake",
        recipeDescription: "A rich and creamy dessert made with cream cheese, sugar, eggs, and a graham cracker crust.",
        recipeSteps: [
                    "Prepare graham cracker crust and press into the bottom of a springform pan.",
                    "Mix cream cheese, sugar, and eggs until smooth.",
                    "Pour mixture over crust and bake until set.",
                    "Chill cheesecake in the refrigerator before serving."
                ]
    )
    
    static let toronto = CapitalCity(
        name: "Toronto",
        coordinate: CLLocationCoordinate2D(latitude: 43.65107, longitude: -79.347015),
        recipeName: "Poutine",
        recipeDescription: "A Canadian comfort food dish consisting of french fries topped with cheese curds and smothered in gravy.",
        recipeSteps: [
                    "Prepare french fries by frying or baking until crispy.",
                    "Top fries with cheese curds.",
                    "Pour hot gravy over the fries and cheese curds.",
                    "Serve immediately and enjoy!"
                ]
    )
    
    static let tokyo = CapitalCity(
        name: "Tokyo",
        coordinate: CLLocationCoordinate2D(latitude: 35.6895, longitude: 139.6917),
        recipeName: "Ramen",
        recipeDescription: "A Japanese noodle soup dish made with wheat noodles, broth, meat, vegetables, and various toppings.",
        recipeSteps: [
                    "Prepare ramen noodles according to package instructions.",
                    "Cook broth and add desired seasonings.",
                    "Cook meat, vegetables, and toppings separately.",
                    "Combine cooked noodles, broth, and toppings in a bowl.",
                    "Serve hot and enjoy!"
                ]
    )
}
