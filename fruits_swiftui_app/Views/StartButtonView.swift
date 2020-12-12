//
//  StartButtonView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 06.12.2020.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isWelcome") var isWelcome: Bool?
    
    var body: some View {
        Button(action: {
            isWelcome = false
        }, label: {
                    Text("Start")
                        .foregroundColor(.white)
                        
                        
                    Image(systemName: "arrow.right.circle")
                        .imageScale(.large)
                        .foregroundColor(.white)
                       })
        .padding(.horizontal, 20)
        .padding(.vertical, 14)
        .shadow(radius: 10)
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.5).shadow(radius: 10)
        )
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
