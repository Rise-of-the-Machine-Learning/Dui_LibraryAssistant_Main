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
            Spacer()
            Text("Type in book you are looking for:")
            Spacer()
            TextField("Enter name", text : $findBook)
                .padding(50)
            Spacer()
            Text("Are you looking for \(findBook)? - test")
            Spacer()
            
            NavigationLink(destination:TitleEnteredView(findBook: $findBook)){Text("Submit")}
            Spacer()
        }
    }
    /*
    struct TextSearchView_Previews: PreviewProvider {
        static var previews: some View {
            TextSearchView()
        }
    }*/
}
