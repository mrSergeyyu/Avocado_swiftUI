//
//  RecipeModel.swift
//  avocado_swiftUI
//
//  Created by Sergey on 23.12.2020.
//

import Foundation

struct Recipe: Identifiable {
    
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let rating: Int
    let serves: Int
    let preparation: Int
    let cooking: Int
    let instructions: [String]
    let ingredients: [String]
}
