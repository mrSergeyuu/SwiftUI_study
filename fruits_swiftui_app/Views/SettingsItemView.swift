//
//  SettingsItemView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 11.12.2020.
//

import SwiftUI

struct SettingsItemView: View {
    //MARK: - Properties
    var name: String
    var content: String?
    var urlName: String?
    var destination: String?
    
    
    //MARK: - Body
    var body: some View {
        VStack(spacing: 10) {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if urlName != nil && destination != nil {
                    Link(urlName!, destination: URL(string: "http://\(destination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.orange)
                } else {
                    EmptyView()
                }
            } .foregroundColor(.primary)
        }//VStack
    }
}
//MARK: - Preview
struct SettingsItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsItemView(name: "Developer", content: "John/Jane")
                .previewLayout(.sizeThatFits)
                .padding()
            SettingsItemView(name: "Technology",  urlName: "Website", destination: "google.com")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
