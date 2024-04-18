//
//  Recipe.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import Foundation
import CoreLocation

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let photoURL: String
    let ingredients: [String]
    let instructions: String
}
