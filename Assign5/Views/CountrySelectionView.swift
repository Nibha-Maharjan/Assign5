//
//  CountrySelectionView.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI

struct CountrySelectionView: View {
    var body: some View {
        List(Country.allCases, id: \.self) { country in
            NavigationLink(destination: RecipeListView(country: country)) {
                Text(country.rawValue)
            }
        }
    }
}
