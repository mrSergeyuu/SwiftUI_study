//
//  fruits_swiftui_appApp.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 06.12.2020.
//

import SwiftUI

@main
struct fruits_swiftui_appApp: App {
    @AppStorage("isWelcome") var isWelcome = true
    
    var body: some Scene {
        WindowGroup {
            if isWelcome {
                WelcomeView()
            } else {
                ContentView()
                
            }
          
            //Text("Start")
        }
    }
}
