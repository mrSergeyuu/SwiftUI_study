//
//  FruitRowView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 07.12.2020.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - Properties
    var fruit: FruitDataModel
    @AppStorage("isWelcome") var isWelcome: Bool?
    
    //MARK: - Body
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center )
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(10)
                .shadow(radius: 10)
                
            VStack(alignment: .leading, spacing: 10, content: {
                Text(fruit.title)
                    .fontWeight(.bold)
                    .font(.title2)
                    
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            })//VStack
            
        }//HStack
        
    }
}

    //MARK: - Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
