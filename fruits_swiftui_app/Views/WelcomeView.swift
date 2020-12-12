//
//  WelcomeView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 07.12.2020.
//

import SwiftUI

struct WelcomeView: View {
    //MARK: - Properties
    var fruits = fruitsData
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0..<fruits.count]) { item in
            FruitCard(friut: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
    }
}

//MARK: - Preview
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
