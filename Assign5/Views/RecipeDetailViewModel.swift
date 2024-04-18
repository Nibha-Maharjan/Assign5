//
//  RecipeDetailViewModel.swift
//  Assign5
//
//  Created by Nibha Maharjan on 2024-04-18.
//

import SwiftUI

class RecipeDetailViewModel: ObservableObject {
    @Published var showingImagePicker = false
    @Published var selectedImage: UIImage?
}
