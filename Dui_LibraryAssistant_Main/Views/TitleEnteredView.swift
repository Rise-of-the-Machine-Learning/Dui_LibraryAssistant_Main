//
//  TitleEnteredView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct TitleEnteredView: View {
    
    @Binding var findBook : String
    
    var body: some View {
        Text("Are you searching for /(findBook)")
        NavigationLink(destination: GoToView()) { Text("Yes")}
        
        //goes to page to show where book is located in library
        //first by floor     -     by section/room    -    by shelf
        //directs user to scan QR code of shelf
        //AR view to search for book!
        NavigationLink(destination: TextSearchView()){ Text("No")}
    }
}


