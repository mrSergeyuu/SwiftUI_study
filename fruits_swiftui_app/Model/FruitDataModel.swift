//
//  FruitDataModel.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 07.12.2020.
//

import SwiftUI

struct FruitDataModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
