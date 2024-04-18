//
//  RecipeView.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI

struct RecipeView: View {
    let capitalCities: [CapitalCity]
    @State private var selectedCity: CapitalCity?
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: CityRecipeDetailView(city: .london)) {
                    RecipeButton(cityName: "London", dishName: CapitalCity.london.recipeName)
                }
                NavigationLink(destination: CityRecipeDetailView(city: .rome)) {
                    RecipeButton(cityName: "Rome", dishName: CapitalCity.rome.recipeName)
                }
                NavigationLink(destination: CityRecipeDetailView(city: .newYork)) {
                    RecipeButton(cityName: "New York", dishName: CapitalCity.newYork.recipeName)
                }
                NavigationLink(destination: CityRecipeDetailView(city: .toronto)) {
                    RecipeButton(cityName: "Toronto", dishName: CapitalCity.toronto.recipeName)
                }
                NavigationLink(destination: CityRecipeDetailView(city: .tokyo)) {
                    RecipeButton(cityName: "Tokyo", dishName: CapitalCity.tokyo.recipeName)
                }
            }
            .navigationBarTitle("Recipes")
        }
    }
}

struct RecipeButton: View {
    let cityName: String
    let dishName: String
    
    var body: some View {
        Text("\(cityName) - \(dishName)")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
    }
}

struct CityRecipeDetailView: View {
    let city: CapitalCity
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text(city.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 20)
                
                Text("Recipe: \(city.recipeName)")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.horizontal, 20)
                
                Text("Description: \(city.recipeDescription)")
                    .font(.body)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Recipe Steps:")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.horizontal, 20)
                    
                    ForEach(0..<city.recipeSteps.count, id: \.self) { index in
                        Text("\(index + 1). \(city.recipeSteps[index])")
                            .font(.body)
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                    }
                }
                
                Spacer()
            }
            .padding(.bottom, 20)
        }
        .navigationBarTitle(city.name)
    }
}
