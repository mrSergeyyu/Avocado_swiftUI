//
//  FactsHeaderView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 23.12.2020.
//

import SwiftUI

struct FactsHeaderView: View {
    //MARK: - Properties
    
    let fact: Fact
    
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(10)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .foregroundColor(.white)
                .lineLimit(5)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
                .frame(width: 300, height: 135, alignment: .center)
            
            Image(fact.image)
                .resizable()
                .scaledToFit()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 92, height: 92, alignment: .center)
                
                )
                .offset(x: -145, y: 0)
        }//ZStack
                
                
    }
}

struct FactsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FactsHeaderView(fact: facts[0])
                .previewLayout(.fixed(width: 400, height: 220))
            FactsHeaderView(fact: facts[1])
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 400, height: 220))
        }
    }
}
