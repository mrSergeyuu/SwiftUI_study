//
//  FruitCard.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 06.12.2020.
//

import SwiftUI

struct FruitCard: View {
    
    //MARK: - Properties
    var friut: FruitDataModel
    
    @State private var isAnimation = false
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(friut.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 10)
                    .scaleEffect(isAnimation ? 1.0 : 0.5)
                    
                Text(friut.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .shadow(radius: 10)
                Text(friut.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 15)
                    .multilineTextAlignment(.center)
                    .shadow(radius: 10)
                
                StartButtonView()
            }//VStack
        }//ZStack
        .onAppear() {
            withAnimation(.easeOut(duration: 1)) {
                isAnimation = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: friut.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
//        .onDisappear {
//            isAnimation = false
//        }
        
        
        
    }
}


//MARK: - Preview
struct FruitCard_Previews: PreviewProvider {
    static var previews: some View {
        FruitCard(friut: fruitsData[0])
    }
}
