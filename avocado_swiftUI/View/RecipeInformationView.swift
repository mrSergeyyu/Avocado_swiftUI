//
//  RecipeInformationView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 24.12.2020.
//

import SwiftUI

struct RecipeInformationView: View {
    var recipe: Recipe
    
    var body: some View {
        HStack(spacing: 14) {
            HStack(spacing: 2) {
                Image(systemName: "person.2")
                Text("Person: \(recipe.serves)")
            }
            HStack(spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            HStack(spacing: 2) {
                Image(systemName: "flame")
                Text("Coocking: \(recipe.cooking)")
            }
            
        }//: HStack
        .foregroundColor(.gray)
        .font(.footnote)
    }
}

struct RecipeInformationView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeInformationView(recipe: recipes[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
