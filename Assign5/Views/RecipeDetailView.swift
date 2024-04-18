//
//  RecipeDetailView.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    @StateObject private var viewModel = RecipeDetailViewModel()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Load recipe photo from URL or use placeholder
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)

                Text("Ingredients:")
                    .font(.headline)
                ForEach(recipe.ingredients, id: \.self) { ingredient in
                    Text("- \(ingredient)")
                }

                Text("Instructions:")
                    .font(.headline)
                Text(recipe.instructions)

                Button("Upload Photo") {
                    viewModel.showingImagePicker = true
                }
                .sheet(isPresented: $viewModel.showingImagePicker) {
                    ImagePicker(selectedImage: $viewModel.selectedImage)
                }
            }
            .padding()
        }
        .navigationBarTitle(recipe.name)
    }
}
