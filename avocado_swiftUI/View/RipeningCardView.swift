//
//  RipeningCardView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 25.12.2020.
//

import SwiftUI

struct RipeningCardView: View {
    //MARK:- Properties
    @State private var isAnimated = false
    
    var ripening: Ripening
    
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 100, height: 100, alignment: .center)
                .zIndex(1)
                .background(
                Circle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                Circle()
                    .fill(Color("ColorAppearanceAdaptive"))
                    .frame(width: 120, height: 120, alignment: .center)
                )
                .offset(x: 0, y: isAnimated ? 60 : -100)
                .animation(Animation.easeInOut(duration: 2))
            
            
            
            VStack(alignment: .center, spacing: 20) {
                VStack {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        
                    
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }//: Vstack
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 70)
                
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .foregroundColor(Color("ColorGreenMedium"))
                    .frame(width: 230)
                    .padding(.vertical, 12)
                    .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white,Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0.0, y: 5)
                    )
                Spacer()
                Text(ripening.description)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorGreenDark"))
                    .lineLimit(nil)
                    .frame(width: 230, height: 70)
                Spacer()
                
                Text(ripening.ripeness.uppercased())
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 175)
                    .padding()
                    .shadow(radius: 5)
                    .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0.0, y: 5)
                    )
                
                Text(ripening.instruction)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .frame(width: 160)
                Spacer()
                    
            }//: Vstack
            .zIndex(0)
            .padding(10)
            .frame(width: 290, height: 550, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(12)
        }//: Vstack
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            isAnimated = true
        }
    }
}

struct RipeningCardView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningCardView(ripening: ripenings[3])
    }
}
