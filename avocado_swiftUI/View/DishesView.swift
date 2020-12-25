//
//  DishesView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 22.12.2020.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .center, spacing: 4) {
                HStack {
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(ImageModifier())
                    Spacer()
                    Text("guacamole")
                }
                Divider()
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(ImageModifier())
                    Spacer()
                    Text("halfavo")
                }
                Divider()
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(ImageModifier())
                    Spacer()
                    Text("salads")
                }
         
                Divider()
                HStack {
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(ImageModifier())
                    Spacer()
                    Text("sandwiches")
                }
            }
            VStack {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .imageScale(.large)
                    .font(Font.title.weight(.ultraLight))
                HStack {
                    Divider()
                }
            }
            VStack(alignment: .center ,spacing: 4) {
                HStack {
                    Text("smoothies")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(ImageModifier())
                }
                Divider()
                HStack {
                    Text("soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(ImageModifier())
                }
                Divider()
                HStack {
                    Text("tacos")
                    Spacer()
                    Image("icon-tacos")
                        .resizable()
                        .modifier(ImageModifier())
                }
                Divider()
                HStack {
                    Text("toasts")
                    Spacer()
                    Image("icon-toasts")
                        .resizable()
                        .modifier(ImageModifier())
                }
            }
        }//: HStack
        .foregroundColor(.gray)
        .font(.system(.callout, design: .serif))
        .padding(10)
        .frame(maxWidth: 600, maxHeight: 220)
    }
}
//:View modifier
struct ImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
    }
}
