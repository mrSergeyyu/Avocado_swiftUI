//
//  RecipeCardView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 23.12.2020.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: - Properties
    var recipe: Recipe
    @State private var isShowing = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    Image(systemName: "bookmark")
                        .imageScale(.small)
                        .foregroundColor(.white)
                        .font(Font.title.weight(.light))
                        .offset()
                        .padding()
                    , alignment: .topTrailing
                )
            Group {
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .foregroundColor(Color("ColorGreenMedium"))
                    .bold()
                
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .italic()
                
                //MARK: - Rating 
                
                RecipeRatingVIew(recipe: recipe)
                
                //MARK: - Bottom information
                RecipeInformationView(recipe: recipe)
                    .padding(.bottom)
            }//: Group
            .padding(.leading)
            
            
        }//: VStack
        .background(Color("ColorAppearanceAdaptive"))
        .frame(maxWidth: 640, maxHeight: 500)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            isShowing = true
        }
        .sheet(isPresented: $isShowing, content: {
            RecipeDetailsView(recipe: recipe)
        })
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipes[3])
    }
}
