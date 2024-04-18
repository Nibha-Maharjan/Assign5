//
//  ContainerView.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI
import MapKit

struct ContainerView: View {
    let capitalCities: [CapitalCity]
    @State private var selectedCity: CapitalCity?
    @State private var isShowingCityDetails = false

    var body: some View {
        MapView(capitalCities: capitalCities, selectedCity: $selectedCity, isShowingCityDetails: $isShowingCityDetails)
            .edgesIgnoringSafeArea(.all)
            .sheet(isPresented: $isShowingCityDetails) {
                CityDetailsView(city: selectedCity ?? CapitalCity(name: "", coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0), recipeName: "", recipeDescription: "", recipeSteps: []))
            }
    }
}
struct CityDetailsView: View {
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
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}
