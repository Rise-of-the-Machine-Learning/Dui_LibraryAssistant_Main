//
//  AboutView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack{
            Color(red: 0.99, green: 0.96, blue: 0.9)
            .ignoresSafeArea()
            VStack{
                
                Text("About Dui")
                    .font(.largeTitle)
                    .padding(.vertical, 10)
                
                Text("Dui is an application to assist its users to find books in the library. It was made to assist those that have a difficult time finding a particular book title in a shelf of many.")
                    .multilineTextAlignment(.leading)
                    .font(.title2)
                    .padding(.vertical, 30)
                    .padding(.horizontal, -10)
                Text("Named after Melvil Dewey, creater of the Dewey Decimal Classification used in libraries worldwide.")
                    .multilineTextAlignment(.leading)
                    .font(.title2)
                    .padding(.vertical, 30)
                    .padding(.horizontal, -10)
            
                VStack{
                    
                    Text("Created by:")
                        .font(.title)
                        .padding(.vertical, 20)
                    Text("Aria Strasser")
                    Text("Ariah Sargent")
                    Text("Blake Hilton")
                    Text("Hayden Dalton")
                    Text("Steve Clowdus")
                }
                .font(.title3)
                .padding(20)
                
            }       .padding(50)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
