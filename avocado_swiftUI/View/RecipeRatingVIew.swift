//
//  RecipeRatingVIew.swift
//  avocado_swiftUI
//
//  Created by Sergey on 24.12.2020.
//

import SwiftUI

struct RecipeRatingVIew: View {
    var recipe: Recipe
    
    var body: some View {
        HStack {
            ForEach(1...recipe.rating, id:\.self) { star in
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRatingVIew_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingVIew(recipe: recipes[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
