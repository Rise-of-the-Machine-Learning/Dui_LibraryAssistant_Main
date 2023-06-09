//
//  GoToView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct GoToView: View {
    @Binding var findBook: String
       
    init(findBook: Binding<String>) {
        self._findBook = findBook
    }
    
    var body: some View {
        ZStack{
            Color(red: 0.99, green: 0.96, blue: 0.9)
                .ignoresSafeArea()
            VStack{
                Text("Let's go!")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 30)
                    .foregroundColor(Color.black)
                
                Text("Head up to the 2nd floor of Albertsons Library.")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .padding(.vertical, 5)
                    .foregroundColor(Color.black)
                
                Text("Follow the green arrows.")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .padding(.vertical, 5)
                    .foregroundColor(Color.black)
                
                Image("albertsons_library_1x")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1000, height: 400)
                    
                HStack{
                    Text("Find this label on the side of the bookshelf.")
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .frame(width: 250, height: 250)
                        .padding(.horizontal, 10)
                        .foregroundColor(Color.black)
                    
                    Image("bookshelf_Anchor")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        .padding(.horizontal, 10)
                }
                
                Text("At the label?")
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(Color.black)
                
                NavigationLink(destination: AtAnchorView(findBook: $findBook)) { Text("Yes")
                        .cornerRadius(15)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 120)
                        .font(.largeTitle.weight(.heavy))
                        .foregroundColor(.white)
                }
                .background(Color(red: 0.071, green: 0.325, blue: 0.463))
                .cornerRadius(15)
                .padding(.maximum(10,0))
                Spacer()
                
                
                
                 NavigationStack{
                 NavigationLink(destination: AudioSearchView()) { Text("Audio Search Test")
                         .cornerRadius(15)
                         .padding(.vertical, 15)
                         .padding(.horizontal, 120)
                         .font(.largeTitle.weight(.heavy))
                         .foregroundColor(.white)
                 }
                 .background(Color(red: 0.62, green: 0.71, blue: 0.07))
                 .cornerRadius(15)
                 .padding(.maximum(10,0))
                 Spacer()
                 }
            }
        
        }
    }
}


