//
//  TextSearchView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct TextSearchView: View {
    
@State private var findBook = ""
    
    var body: some View {
        VStack{
            Text("Type in book you are looking for:")
            TextField("Enter name", text : $findBook)
                .padding(50)
            Text("Are you looking for \(findBook)? - test")
            
            NavigationLink(destination:TitleEnteredView(findBook: $findBook)){Text("Submit")}
        }
    }
    /*
    struct TextSearchView_Previews: PreviewProvider {
        static var previews: some View {
            TextSearchView()
        }
    }*/
}
