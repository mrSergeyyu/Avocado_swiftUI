//
//  ContentView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 21.12.2020.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocado")
                }
            RecipesView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            RepaningView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
        }//: TabView
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}
//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            
    }
}
