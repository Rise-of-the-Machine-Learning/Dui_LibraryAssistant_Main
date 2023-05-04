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
                Text("If you ever wanted your book search to go swimmingly, Dui cod be what you need.")
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("To begin, type the title of the book that you want to find.")
                    .font(.title)
                Spacer()
                Text("Scan books with your app (Dui) until the book with the same title is found.")
                    .font(.title)
                Spacer()
                Text("We hope that you will enjoy catching those books.")
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
