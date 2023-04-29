//
//  AutocompleteTextField.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Hayden Dalton on 4/29/23.
//

import SwiftUI

struct AutocompleteTextField: View {
    let suggestions: [String]
    @Binding var text: String
    @State private var showSuggestions = false

    var body: some View {
        VStack {
            TextField("Enter name", text: $text)
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                .border(Color.gray, width: 1)
                .onChange(of: text) { newValue in
                    self.showSuggestions = !newValue.isEmpty
                }
            
            if self.showSuggestions {
                List {
                    ForEach(self.suggestions.filter({ $0.lowercased().hasPrefix(self.text.lowercased()) }), id: \.self) { suggestion in
                        Button(action: {
                            self.text = suggestion
                            self.showSuggestions = false
                        }) {
                            Text(suggestion)
                        }
                    }
                }
                .background(Color.white)
                .border(Color.gray, width: 1)
                .cornerRadius(8)
            }
        }
    }
}
