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
            Text("Shows where in the library to go to to scan image anchor for Dui")
            NavigationLink(destination: ContentView()) { Text("Ready to scan!")}
        }
    }
}

struct GoToView_Previews: PreviewProvider {
    static var previews: some View {
        GoToView()
    }
}
