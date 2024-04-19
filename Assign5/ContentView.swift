//
//  ContentView.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//    Nibha Maharjan
//    Student ID: 301282952

//    Rahul Edirisinghe
//    Student ID: 301369991
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
                
                RecipeView(capitalCities: capitalCities)
                    .tabItem {
                        Label("Recipes", systemImage: "book.fill")
                    }
                    .tag(Tab.recipe)
            }
            .navigationBarTitle("Recipe Finder")
            .background(Color.white.edgesIgnoringSafeArea(.all))
            .accentColor(.black)
            .foregroundColor(.red)
            .onAppear {
                
                    UITabBar.appearance().barTintColor = UIColor.white
                    UITabBar.appearance().layer.borderWidth = 0.0
                    UITabBar.appearance().clipsToBounds = true
                    UITabBar.appearance().unselectedItemTintColor = UIColor.darkGray
                    UITabBar.appearance().layer.shadowColor = UIColor.black.cgColor
                    UITabBar.appearance().layer.shadowOffset = CGSize(width: 0.0, height: -3.0)
                    UITabBar.appearance().layer.shadowRadius = 6.0
                    UITabBar.appearance().layer.shadowOpacity = 0.3
                }
    }
}

