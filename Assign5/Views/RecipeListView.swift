//
//  RecipeListView.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI

struct RecipeListView: View {
    let country: Country
    @ObservedObject private var viewModel: RecipeListViewModel

    init(country: Country) {
        self.country = country
        self.viewModel = RecipeListViewModel(country: country)
    }

    var body: some View {
        VStack {
            MapView(annotations: $viewModel.annotations)
                .frame(height: 300)
//                .edgesIgnoringSafeArea([.top, .bottom])
                .onAppear {
                    viewModel.fetchRecipes()
                }
            
            List(viewModel.recipes) { recipe in
                NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                    RecipeRowView(recipe: recipe)
                }
            }
            .sheet(isPresented: $viewModel.showingImagePicker) {
                ImagePicker(selectedImage: $viewModel.selectedImage)
                    .onDisappear {
                        viewModel.savePhoto()
                    }
            }
        }
        .navigationBarTitle(country.rawValue)
    }
}
