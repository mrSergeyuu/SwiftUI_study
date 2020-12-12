//
//  SettingsView.swift
//  fruits_swiftui_app
//
//  Created by Sergey on 10.12.2020.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    @Environment (\.presentationMode) var presentationMode
    @AppStorage("isWelcome") var isWelcome = false
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    
                    //MARK: - Group 1
                    GroupBox(label:
                                SettingsLabelView(titleLabel: "Fruits", titleIcon: "info.circle")
                                .foregroundColor(.primary),
                             content: {
                                Divider().padding(.horizontal, 10)
                                HStack(alignment: .center) {
                                    Image("pear")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                    Text("Fruits are good source of vitamins and minerals and are a readily available source. A fruit will boost you instantly.")
                                        .font(.footnote)
                                        .foregroundColor(.primary)
                                }//HStack
                             })//GroupBox
                    //MARK: - Group 2
                    
                    GroupBox {
                        SettingsLabelView(titleLabel: "Customization", titleIcon: "paintbrush")
                        Divider().padding(.vertical, 5)
                        Text("You can switch this toggle to return into onboarding screen of the app")
                            .font(.footnote)
                            .padding(.vertical, 8)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                            .foregroundColor(.primary)

                        
                        Toggle(isOn: $isWelcome) {
                            if isWelcome {
                                Text("Restarted".uppercased())
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .cornerRadius(9)
                        
                    }
                 
                    //MARK: - Group 3
                    GroupBox {
                       
                        SettingsLabelView(titleLabel: "Application", titleIcon: "apps.iphone")
                        
                        SettingsItemView(name: "Developer", content: "John/ Jane")
                        SettingsItemView(name: "Desinger", content: "Robert Petras")
                        SettingsItemView(name: "Compability", content: "IOS 14")
                        SettingsItemView(name: "Website", urlName: "Swift UI masterclass", destination: "swiftuimasterclass.com")
                        SettingsItemView(name: "Twitter", urlName: "@RobertPetras", destination: "twitter.com/robertpetras")
                        SettingsItemView(name: "SwiftUI", content: "2.0")
                        SettingsItemView(name: "Version", content: "1.1.0")
                        
                    }//Box
                    
                }//VStack
                .navigationTitle("Settings").navigationBarTitleDisplayMode(.large)
                .padding()
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.primary)
                }))
                
            }//Scroll
        }//Navigation
        
    }
}


//MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.light)
    }
}
