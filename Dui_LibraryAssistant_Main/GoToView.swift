//
//  GoToView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct GoToView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Shows where in the library to go to to scan image anchor for Dui")
                .padding(30)
            Spacer()
            NavigationStack{
                NavigationLink(destination: ContentView()) { Text("Ready to scan!")}
                Spacer()
            }
            NavigationStack{
                NavigationLink(destination: ScanBookView()) { Text("Book Search Test")}
                NavigationLink(destination: AudioSearchView()) { Text("Audio Search Test")}
                Spacer()
            }
        }
    }
}


