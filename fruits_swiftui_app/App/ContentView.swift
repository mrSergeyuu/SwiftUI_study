//
//  ContentView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 06.12.2020.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @State var isSwiched = false
    
    var fruits: [FruitDataModel] = fruitsData
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    NavigationLink(destination: FruitDetailsView(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical, 5)
                        
                        
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isSwiched = true
                
            }, label: {
                Image(systemName: "slider.horizontal.3")
                    .foregroundColor(.primary)
                    .sheet(isPresented: $isSwiched, content: {
                        SettingsView()
                    })
            })//Button
            )
        }//Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
