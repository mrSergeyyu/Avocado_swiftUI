//
//  RipeningModel.swift
//  avocado_swiftUI
//
//  Created by Sergey on 25.12.2020.
//

import Foundation

struct Ripening: Identifiable {
    
    let id = UUID()
    let image: String
    let stage: String
    let title: String
    let description: String
    let ripeness: String
    let instruction: String
}
