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
            Text("How do you want to find your book?")
            
            NavigationLink(destination:TextSearchView()){ Text("Text")}
            
            NavigationLink(destination:AudioSearchView()){ Text("Audio")}
        }
    }
}

struct BeginAppView_Previews: PreviewProvider {
    static var previews: some View {
        BeginAppView()
    }
}
