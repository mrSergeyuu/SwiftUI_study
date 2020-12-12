//
//  FruitHeaderView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 09.12.2020.
//

import SwiftUI

struct FruitHeaderView: View {
//MARK: - Properties
    var fruit: FruitDataModel
    
    @State var isAnimated = false
    
//MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .scaleEffect(isAnimated ? 1.0 : 0.5)
                .padding()
        }
        .frame(maxHeight: 440)
        .onAppear() {
            isAnimated = true
            animation(.easeOut(duration: 0.8))
            
        }
    }
}

//MARK: - Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[3])
            .previewLayout(.fixed(width: 375, height: 440))
            .padding()
    }
}
