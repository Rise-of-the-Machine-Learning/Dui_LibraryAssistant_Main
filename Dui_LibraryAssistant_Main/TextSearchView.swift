//
//  TextSearchView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct TextSearchView: View {
    
    @State private var findBook = ""
    
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
                    .multilineTextAlignment(.center)
                Spacer()
                
                NavigationLink(destination: TitleEnteredView(findBook: Binding(projectedValue: $findBook)))
                {
                    Text("Submit")
                        .cornerRadius(15)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 100)
                        .font(.largeTitle.weight(.heavy))
                        .foregroundColor(.white)
                }
                .background(Color(red: 0.62, green: 0.71, blue: 0.07))
                //#9EB512
                .cornerRadius(15)
                .padding(.maximum(10,0))
                .offset(y: -130)
                Spacer()
               
            }
        }
      
    }
}
  
/*
    struct TextSearchView_Previews: PreviewProvider {
        static var previews: some View {
            TextSearchView()
        }
    }
*/
