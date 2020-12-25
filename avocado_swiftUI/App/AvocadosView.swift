//
//  AvocadosView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 21.12.2020.
//

import SwiftUI

struct AvocadosView: View {
    //MARK: - Properties
    @State private var isImageAnimated = false
    @State private var isTextAnimated = false
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            HStack() {
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(minWidth: 240, maxWidth: 360, minHeight: 240, maxHeight: 360, alignment: .center)
                .shadow(color: Color.init("ColorBlackTransparentDark"), radius: 8, x: 0, y: 10)
                .scaleEffect(isImageAnimated ? 1 : 0.9, anchor: .center)
                .animation(Animation.easeInOut(duration: 2).repeatForever())
                
            }
            
            VStack {
                Text("Avocado")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .animation(Animation.easeInOut(duration: 2))
                    .offset(x: 0, y: isTextAnimated ? 0 : 400 )
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 8, x: 0.0, y: 8)
                
                Text("Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                    .font(.system(size: 16, design: .serif))
                    .foregroundColor(Color.init("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .animation(Animation.easeInOut(duration: 2))
                    .offset(x: 0, y: isTextAnimated ? 0 : 400 )
                    .frame(maxWidth: 600)
                
            }//: VStack
            Spacer()
        }//: VStack
        .onAppear(perform: {
            isImageAnimated.toggle()
            isTextAnimated = true
        })
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
    }
}
//MARK: - Preview
struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AvocadosView()
            AvocadosView()
                .preferredColorScheme(.dark)
        }
    }
}
