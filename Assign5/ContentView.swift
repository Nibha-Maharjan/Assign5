//
//  ContentView.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI

struct ContentView: View {
    let capitalCities = [CapitalCity.london, CapitalCity.rome, CapitalCity.newYork, CapitalCity.toronto, CapitalCity.tokyo]
    @State private var selectedTab: Tab = .map

    enum Tab {
        case map
        case recipe
    }

    var body: some View {
            TabView(selection: $selectedTab) {
                ContainerView(capitalCities: capitalCities)
                    .tabItem {
                        Label("Map", systemImage: "map.fill")
                    }
                    .tag(Tab.map)
                
                RecipeView()
                    .tabItem {
                        Label("Recipes", systemImage: "book.fill")
                    }
                    .tag(Tab.recipe)
            }
            .navigationBarTitle("Recipe Finder")
            .background(Color.white.edgesIgnoringSafeArea(.all)) // Set background color
        }
    }

