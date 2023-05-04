//
//  BeginAppView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct BeginAppView: View {
    var body: some View {
        ZStack {
            Color(red: 0.99, green: 0.96, blue: 0.9)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("How do you want to find your book?")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                Spacer()
                
                NavigationLink(destination:AudioSearchView()){
                    Image("icon_mic2")
                        .resizable()
                        .frame(width:100, height:100)
                }
                Text("Audio")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                Spacer()
                NavigationLink(destination:TextSearchView()){
                    Image("Keyboard")
                        .resizable()
                        .frame(width:200, height:100)
                }
                Text("Text")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                Spacer()
            }
        }
    }
}

struct BeginAppView_Previews: PreviewProvider {
    static var previews: some View {
        BeginAppView()
    }
}
