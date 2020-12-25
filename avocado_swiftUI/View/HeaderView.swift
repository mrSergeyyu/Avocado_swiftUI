//
//  HeaderView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 21.12.2020.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - Properties
    @State private var isAnimated = false
    let header: Header
    
    //MARK: - Body
    var body: some View {
        ZStack(alignment: .center) {
            Image(header.image)
                .resizable()
                .scaledToFill()
            HStack() {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 6)
                    .padding(0)
                Spacer()
                
                    
                VStack {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .shadow(color: .black, radius: 10, x: 0.0, y: 10)
                        .padding(.top, 10)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .padding(.vertical, 10)
                        .padding(.top, -10)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                }//: VStack
                Spacer()
            }//: HSctack
            .frame(width: 280, height: 120)
            .background(
                Color("ColorBlackTransparentLight"))
            .offset(x: -80, y: isAnimated ? 90 : 280)
            .animation(Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5))
            .onAppear(perform: {
                isAnimated = true
            })
            
        }//: ZStack
        .frame(maxWidth: 600, maxHeight: 350)
    }
}

//MARK: - Preview
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(header: headers[2])
                .previewLayout(.sizeThatFits)
                .padding()
            HeaderView(header: headers[3])
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
