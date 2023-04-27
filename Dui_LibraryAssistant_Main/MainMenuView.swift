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
            Spacer()
            VStack{
                
                Text("Dui")
                Text("Library Assistant")
                
                Spacer()
               
                NavigationStack{
                    NavigationLink(destination: BeginAppView()){ Text("Begin")
                            .background(.red)
                            .foregroundStyle(.black)
                            .padding(15)
                            .font(.largeTitle.weight(.heavy))
                    }
                    .background(.red)
                    .foregroundStyle(.white)
                    .padding(20)
                    .font(.largeTitle.weight(.medium))
                    
                    Spacer()
                    
                    Spacer()
                    NavigationLink(destination: HowToView()){ Text("How To")}
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .font(.title2.weight(.light))
                        .padding(20)
                    Spacer()
                    NavigationLink(destination: AboutView()){ Text("About")}
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .font(.title2.weight(.light))
                        .padding(20)
                    Spacer()
                }
                /*
                NavigationLink(destination: SettingsView()){ Text("Settings")}
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .font(.title2.weight(.light))
                    .padding(20)*/
                
            }
            
        }
    }
}

/*
struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}*/
