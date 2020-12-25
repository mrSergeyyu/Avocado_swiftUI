//
//  RepaningView.swift
//  avocado_swiftUI
//
//  Created by Sergey on 21.12.2020.
//

import SwiftUI

struct RepaningView: View {
    //MARK:- Properties
    var ripening: [Ripening] = ripenings
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripening) {
                        item in
                        RipeningCardView(ripening: item)
                            
                    }
                }
                .padding(.horizontal, 25)
            }
        }
    }
}

struct RepaningView_Previews: PreviewProvider {
    static var previews: some View {
        RepaningView(ripening: ripenings)
    }
}
