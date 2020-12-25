//
//  HeaderModel.swift
//  avocado_swiftUI
//
//  Created by Sergey on 22.12.2020.
//

import SwiftUI

struct Header: Identifiable {
    let id = UUID()
    let image: String
    let headline: String
    let subheadline: String
}
