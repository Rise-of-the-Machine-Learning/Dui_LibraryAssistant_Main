//
//  MainMenuView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct MainMenuView: View {
    
    var body: some View {
        
        VStack{
            
                Text("Dui")
                .font(.largeTitle.weight(.heavy))
                Text("Library Assistant")
                .font(.title2)
            
                NavigationStack{
                    NavigationLink(destination: BeginAppView()){ Text("Begin")
                            .cornerRadius(15)
                            .padding(.vertical, 30)
                            .padding(.horizontal, 120)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.071, green: 0.325, blue: 0.463))
                    .cornerRadius(15)
                    .padding(.maximum(20,0))
                    //.padding(20)
                    
                    NavigationLink(destination: HowToView()){ Text("How To")
                            .cornerRadius(15)
                            .padding(.vertical, 30)
                            .padding(.horizontal, 110)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.071, green: 0.325, blue: 0.463)) // #125376
                        .cornerRadius(15)
                        .padding(.maximum(20,0))

                    NavigationLink(destination: AboutView()){ Text("About")
                            .cornerRadius(15)
                            .padding(.vertical, 30)
                            .padding(.horizontal, 120)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                        .background(Color(red: 0.071, green: 0.325, blue: 0.463))
                        .cornerRadius(15)
                        .padding(.maximum(20,0))
                    NavigationLink(destination: SettingsView()){ Text("Settings")
                            .cornerRadius(15)
                            .padding(.vertical, 30)
                            .padding(.horizontal, 100)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.729, green: 0.431, blue: 0.075)) // #ba6e13
                        .cornerRadius(15)
                        .padding(.maximum(20,0))
    
                }
                
        }
        .background(Color.green.edgesIgnoringSafeArea(.all))
    }
      
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
