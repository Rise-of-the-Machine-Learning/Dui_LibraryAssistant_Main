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
        VStack{
            Spacer()
            Text("Are you searching for \(findBook)")
            Spacer()
            NavigationLink(destination: GoToView()) { Text("Yes")}
            Spacer()
            //goes to page to show where book is located in library
            //first by floor     -     by section/room    -    by shelf
            //directs user to scan QR code of shelf
            //AR view to search for book!
            NavigationLink(destination: TextSearchView()){ Text("No")}
            Spacer()
        }
    }
}

/*
 struct TitleEnteredView_Preview: PreviewProvider {
 static var previews: some View {
 TitleEnteredView()
 }
 }
 */
