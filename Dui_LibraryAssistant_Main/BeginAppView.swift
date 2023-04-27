//
//  BeginAppView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct BeginAppView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("How do you want to find your book?")
            Spacer()
            
            NavigationLink(destination:TextSearchView()){ Text("Text")}
            Spacer()
            NavigationLink(destination:AudioSearchView()){ Text("Audio")}
            Spacer()
        }
    }
}

struct BeginAppView_Previews: PreviewProvider {
    static var previews: some View {
        BeginAppView()
    }
}
