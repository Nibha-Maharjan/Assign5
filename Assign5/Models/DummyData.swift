//
//  DummyData.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import Foundation
import CoreLocation

struct DummyData {
    static func recipes(for country: Country) -> [Recipe] {
        switch country {
        case .italy:
            return [
                Recipe(name: "Spaghetti Carbonara", coordinate: CLLocationCoordinate2D(latitude: 41.9028, longitude: 12.4964), photoURL: "", ingredients: ["Spaghetti", "Eggs", "Bacon", "Parmesan cheese", "Black pepper"], instructions: "1. Cook spaghetti according to package instructions. 2. In a separate pan, cook bacon until crispy. 3. In a bowl, whisk together eggs and grated Parmesan cheese. 4. Drain spaghetti and add to the pan with bacon. 5. Remove pan from heat and quickly stir in egg mixture. 6. Serve immediately with freshly ground black pepper.")
            ]
        case .usa:
            return [
                Recipe(name: "Classic Cheeseburger", coordinate: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), photoURL: "", ingredients: ["Ground beef", "Hamburger buns", "Lettuce", "Tomato", "Onion", "Pickles", "Ketchup", "Mustard", "Cheese"], instructions: "1. Preheat grill to medium-high heat. 2. Form ground beef into patties and season with salt and pepper. 3. Grill patties for 4-5 minutes per side, or until desired doneness. 4. Toast hamburger buns on the grill. 5. Assemble burgers with lettuce, tomato, onion, pickles, ketchup, mustard, and cheese.")
            ]
        // Add recipes for more countries
        }
    }
}
