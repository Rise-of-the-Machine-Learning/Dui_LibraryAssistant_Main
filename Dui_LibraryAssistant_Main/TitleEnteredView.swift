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
        ZStack {
            Color(red: 0.99, green: 0.96, blue: 0.9)
                .ignoresSafeArea()
            VStack{
                
                Text("Are you searching for:")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    .padding(.vertical, 30)
                    .offset(y: 130)
                Text("\(findBook)?")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.44, green: 0.05, blue: 0.48))
                    .padding()
                    .offset(y: 130)
                VStack{
                    NavigationLink(destination: GoToView()) { Text("Yes")
                            .cornerRadius(15)
                            .padding(.vertical, 30)
                            .padding(.horizontal, 125)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.44, green: 0.05, blue: 0.48))
                    .cornerRadius(15)
                    .padding(.maximum(20,0))
                    //.offset(y: 100)
                    
                    //goes to page to show where book is located in library
                    //first by floor     -     by section/room    -    by shelf
                    //directs user to scan QR code of shelf
                    //AR view to search for book!
                    NavigationLink(destination: TextSearchView()){ Text("No")
                            .cornerRadius(15)
                            .padding(.vertical, 30)
                            .padding(.horizontal, 130)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.729, green: 0.431, blue: 0.075)) // #ba6e13
                    .cornerRadius(15)
                    .padding(.maximum(10,0))
                    //.offset(y: 100)
                    Spacer()
                }
                .padding(.vertical, 20)
                .offset(y: 200)
            }
        }
    }
}

//goes to page to show where book is located in library
//first by floor     -     by section/room    -    by shelf
//directs user to scan QR code of shelf
//AR view to search for book!

/*
 struct TitleEnteredView_Preview: PreviewProvider {
 static var previews: some View {
 TitleEnteredView()
 }
 }
 */
