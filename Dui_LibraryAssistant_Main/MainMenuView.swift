//
//  MainMenuView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        ZStack{
            Color(red: 0.99, green: 0.96, blue: 0.9)
                .ignoresSafeArea()
            VStack{
                    Image("dui_logo")
                        .resizable()
                        .offset(y: -130)
                        .scaledToFit()
                        .frame(width: 500, height: 650)
                
                    NavigationLink(destination: BeginAppView()){ Text("Begin")
                            .cornerRadius(15)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 100)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.62, green: 0.71, blue: 0.07))
                    //#9EB512
                    .cornerRadius(15)
                    .padding(.maximum(10,0))
                    .offset(y: -130)
                    
                    NavigationLink(destination: HowToView()){ Text("How To")
                            .cornerRadius(15)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 90)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.44, green: 0.05, blue: 0.48)) // #700E7A
                    .cornerRadius(15)
                    .padding(.maximum(10,0))
                    .offset(y: -130)
                    
                    NavigationLink(destination: AboutView()){ Text("About")
                            .cornerRadius(15)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 100)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.071, green: 0.325, blue: 0.463))
                    .cornerRadius(15)
                    .padding(.maximum(10,0))
                    .offset(y: -130)
                    
                    NavigationLink(destination: SettingsView()){ Text("Settings")
                            .cornerRadius(15)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 80)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.729, green: 0.431, blue: 0.075)) // #ba6e13
                    .cornerRadius(15)
                    .padding(.maximum(10,0))
                    .offset(y: -130)
                
                    
                }
                
        }
    }
      
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
