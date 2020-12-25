//
//  RecipeDetailsView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 24.12.2020.
//

import SwiftUI

struct RecipeDetailsView: View {
    //MARK:- Properties
    var recipe: Recipe
    
    @State private var isAnimated = false
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {

        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 10) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Text(recipe.title)
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                RecipeRatingVIew(recipe: recipe)
                
                RecipeInformationView(recipe: recipe)
                    .padding(15)
                
                Text("Ingridients")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .leading, spacing: 5) {
                    
                    ForEach(recipe.ingredients, id: \.self) {
                        ingridient in
                        Text(ingridient)
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        Divider()
                    }
                    
                    
                }//: VStack
                .padding(.horizontal)
                
                Text("Instructions")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 5) {
                    ForEach(recipe.instructions, id: \.self) {
                        instruction in
                        
                        Image(systemName: "chevron.down.circle")
                            .resizable()
                            .frame(width: 42, height: 42, alignment: .center)
                            .imageScale(.large)
                            .font(Font.title.weight(.ultraLight))
                            .foregroundColor(Color("ColorGreenAdaptive"))
                        
                        Text(instruction)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                            .font(.system(.body, design:.serif))
                            .frame(minHeight: 100)
                    }
                }//: Vstack
                .padding(.horizontal, 15)
            }//: VStack
        }//: Scroll
        .edgesIgnoringSafeArea(.top)
        .onAppear {
            isAnimated = true
        }
        .overlay(
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.down.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
                    .shadow(radius: 9)
                    .opacity(isAnimated ? 1.0 : 0.8)
                    .scaleEffect(isAnimated ? 1.2 : 1.0)
                    .animation(Animation.easeInOut(duration: 2).repeatForever())
            })
            .padding()
            , alignment: .topTrailing
        
        )
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(recipe: recipes[3])
    }
}
