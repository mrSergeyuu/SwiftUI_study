//
//  FruitDetailsView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 09.12.2020.
//

import SwiftUI

struct FruitDetailsView: View {
    //MARK: - Properties
    @State var letterLimit = 30
    @State var buttomText = "More..."
    @State var textCondition = false
    
    var fruit: FruitDataModel
    
    //MARK: - Body
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                VStack(alignment: .center, spacing: 20, content: {
                    
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    
                    VStack(alignment: .leading
                           , spacing: 20, content: {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        NutrientsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .foregroundColor(fruit.gradientColors[0])
                            .font(.title3)
                            .bold()
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .lineLimit(letterLimit)
                        
                        Button(action: {
                            if textCondition {
                                letterLimit = 30
                                buttomText = "More..."
                                textCondition = false
                            } else {
                                letterLimit = 280
                                buttomText = "Less..."
                                textCondition = true
                            }
                            
                        }, label: {
                            Text(buttomText)
                                
                        })
                        
                        
                        //LINK
                        LInkView(fruit: fruit)
                            .padding(.bottom, 20)
                    })//VSTACK
                    .padding()
                    .frame(maxWidth: 640)
                })//VSTACK
                .navigationBarHidden(true)
            }//SCROLL
            .edgesIgnoringSafeArea(.top)
            
            
        }//NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - Preview
struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData[5])
    }
}
