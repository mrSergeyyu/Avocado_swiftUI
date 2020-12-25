//
//  FactsDataModel.swift
//  avocado_swiftUI
//
//  Created by Sergey on 23.12.2020.
//

import Foundation

struct Fact: Identifiable {
    let id = UUID()
    let image: String
    let content: String
}
