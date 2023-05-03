//
//  ScanBookView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Allison Dalton on 4/29/23.
//

import SwiftUI

struct ScanBookView: View {
    @State private var Scanned = ""
    @State private var title = "Scan Book Title"
    var body: some View {
        NavigationView {
            VStack{
                Color(red: 0.99, green: 0.96, blue: 0.9)
                    .ignoresSafeArea()
                HStack{
                    TextField("Scan Title", text: $Scanned)
                    ScanButton(text: $Scanned, title: $title)
                        .offset(y: -130)
                        .scaledToFit()
                        .frame(width: 500, height: 650)
                    NavigationLink(destination: BeginAppView()){ Text("Begin")
                            .cornerRadius(15)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 100)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.62, green: 0.71, blue: 0.07))
                    //#9EB512
                    .cornerRadius(15)
                    .padding(.maximum(10,0))
                    .offset(y: -130)
                    }
                }
            }
        }
    }



