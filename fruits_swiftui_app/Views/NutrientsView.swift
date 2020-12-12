//
//  NutrientsView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 09.12.2020.
//

import SwiftUI

struct NutrientsView: View {
    //MARK: - Properties
    var fruit: FruitDataModel
    let elements = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    
    //MARK: - Body
    var body: some View {
        GroupBox () {
            DisclosureGroup("Nutrients per 100g") {
                ForEach(0..<elements.count, id: \.self) { item in Divider().padding(.vertical, 8)
                    HStack {
                        Group {
                        Image(systemName: "info.circle")
                        Text(elements[item])
                            .font(.body)
                            .bold()  
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        
                        Spacer()
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(fruit.gradientColors[0])
                            
                    }
                    .foregroundColor(.primary)
                }
            }
        }//Closure
        .foregroundColor(.primary)
        
    }// BOX
}

//MARK: - Preview
struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView(fruit: fruitsData[3])
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .frame(width: 375, height: 480, alignment: .center)
            .padding()
    }
}
