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
            VStack{
                Text("Dui")
                Text("Library Assistant")
                
               
                NavigationLink(destination: BeginAppView()){ Text("Begin")}
                NavigationLink(destination: HowToView()){ Text("How To")}
                NavigationLink(destination: AboutView()){ Text("About")}
                NavigationLink(destination: SettingsView()){ Text("Settings")}
            }
            
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
