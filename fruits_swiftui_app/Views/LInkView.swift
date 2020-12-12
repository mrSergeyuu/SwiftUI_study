//
//  LInkView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 09.12.2020.
//

import SwiftUI

struct LInkView: View {
    
    var fruit: FruitDataModel
    
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/\(fruit.title)")!)
                Image(systemName: "arrow.up.right.square")
            }.font(.footnote)
        }
    }
}

struct LInkView_Previews: PreviewProvider {
    static var previews: some View {
        LInkView(fruit: fruitsData[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
