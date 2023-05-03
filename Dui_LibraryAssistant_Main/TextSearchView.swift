//
//  TextSearchView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct TextSearchView: View {
    
    @State private var findBook = ""
    @State private var titleSubmit = false
    
    let suggestedBooks = ["The Faith of a Heretic", "philosophy of religion", "Experience and God"]
    
    var body: some View {
        ZStack {
            Color(red: 0.99, green: 0.96, blue: 0.9)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Type in book you are looking for:")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                TextField("Enter name", text: $findBook)
                    .padding(50)
                    .font(.title)
                Spacer()
                Text("Are you looking for \(findBook)?")
                    .font(.title)
                Spacer()
                
                Button("Submit"){
                    titleSubmit = true
                    //NavigationLink(destination: BeginAppView())
                    //{
                }//}
                .font(.title)
                
                
                //(destination: BeginAppView())
                Spacer()
            }
        }
        .navigationDestination(isPresented: $titleSubmit) {
            TitleEnteredView(findBook: $findBook)
        }
        .navigationTitle("My Favorite Color")
    }
}
  

    struct TextSearchView_Previews: PreviewProvider {
        static var previews: some View {
            TextSearchView()
        }
    }

