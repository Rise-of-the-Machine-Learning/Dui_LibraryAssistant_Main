//
//  AtAnchorView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 5/3/23.
//

import SwiftUI

struct AtAnchorView: View {
    @Binding var findBook: String
       
    init(findBook: Binding<String>) {
        self._findBook = findBook
    }
    
    var body: some View {
        ZStack{
            Color(red: 0.99, green: 0.96, blue: 0.9)
            .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Scan the label with your device. Try to fit the entire label in the camera.")
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding(.vertical, 20)
                    .foregroundColor(Color.black)
                Text("You'll be sent to the AR view that will direct you to which shelf the book is on.")
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding(.vertical, 20)
                    .foregroundColor(Color.black)
                Text("Click on the green block once you are in front of it.")
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding(.vertical, 20)
                    .foregroundColor(Color.black)
                Spacer()
                NavigationLink(destination: ContentView(findBook: $findBook)) { Text("Ready!")
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
            }
        }
    }
}
