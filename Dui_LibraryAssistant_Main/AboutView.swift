//
//  AboutView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack{
            Text("About Dui stuff here")
            Text("Dui is an application to assist its users to find books in the library. It was made to assist those that have a difficult time finding a particular book title in a shelf of many.")
                .multilineTextAlignment(.center)
                .padding(50)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
