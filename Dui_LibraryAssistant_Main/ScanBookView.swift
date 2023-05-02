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
                HStack{
                    TextField("Scan Title", text: $Scanned)
                    ScanButton(text: $Scanned, title: $title)
                      .frame(width: 56, height: 56, alignment: .leading)
                }
            }
        }
    }
}


