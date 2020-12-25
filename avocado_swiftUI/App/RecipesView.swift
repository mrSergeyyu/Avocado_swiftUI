//
//  RecipesView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 21.12.2020.
//

import SwiftUI

struct RecipesView: View {
    //MARK: - Properties
    
    var readyHeaders: [Header] = headers
    var readyFacts: [Fact] = facts
    var readyRecipes: [Recipe] = recipes
    
    
    //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 10) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                    ForEach(readyHeaders) { header in
                        HeaderView(header: header)
                    }
                    }
                }//: HScroll
                Text("Avocado dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                  
                
                VStack {
                    Text("Facts about avocado")
                        .bold()
                        .modifier(TitleModifier())
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center, spacing: 30) {
                            ForEach(readyFacts) { fact in
                                FactsHeaderView(fact: fact)
                                    
                            }
                        }.padding(.leading, 50)
                    }
                }
                
                VStack(spacing: 15) {
                    Text("Avocado recipies")
                        .bold()
                        .modifier(TitleModifier())
                        
                    ForEach(readyRecipes) {
                            recipe in
                            RecipeCardView(recipe: recipe)
                    }
                }//: VStack
                .padding()
                
                
                
                Text("All about Avocados")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                    
                
                Text("Everythink you wanted to know about avocados but were too afraid to ask")
                    .foregroundColor(.secondary)
                    .font(.system(.body, design: .serif))
                    .padding(.horizontal, 8)
                    .padding(.bottom, 8)
                    .multilineTextAlignment(.center)
                    
                    
            }//: VStack
            
        }//: VScroll
        .edgesIgnoringSafeArea(.top)
        //.frame(maxWidth: 640)
        
    }
}
//MARK: - View's modifiers
struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
           // .fontWeight(.bold)
            .foregroundColor(Color("ColorGreenMedium"))
            .padding(5)
    }
}
//MARK: - Preview
struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipesView()
            RecipesView()
                .preferredColorScheme(.dark)
        }
    }
}
