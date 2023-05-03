//
//  HowToView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct HowToView: View {
    var body: some View {
        ZStack{
            Color(red: 0.99, green: 0.96, blue: 0.9)
            .ignoresSafeArea()
            VStack{
                Spacer()
                Text("How to use Dui")
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("blah blah blah")
                    .font(.title)
                Spacer()
                Text("blah bleh bloop")
                    .font(.title)
                Spacer()
                Text("bleep blah blept")
                    .font(.title)
                Spacer()
                Spacer()
            }
        }
    }
}

struct HowToView_Previews: PreviewProvider {
    static var previews: some View {
        HowToView()
    }
}
