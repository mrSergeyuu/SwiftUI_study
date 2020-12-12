//
//  SettingsLabelView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 11.12.2020.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - Proprties
    var titleLabel: String
    var titleIcon: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(titleLabel.uppercased())
                .bold()
            Spacer()
            Image(systemName: titleIcon).navigationBarTitleDisplayMode(.large)
           
        }
        .foregroundColor(.primary)

    }
}
//MARK: - Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(titleLabel: "Fruits", titleIcon: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
                }
}
