//
//  SettingsView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color(red: 0.99, green: 0.96, blue: 0.9)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Visual Settings")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    
                Spacer()
               
                Text("Change Colors")
                    .padding(.vertical, 15)
                    .padding(.horizontal, 50)
                    .font(.largeTitle.weight(.medium))
                    .foregroundColor(.white)
                    .background(Color(red: 0.729, green: 0.431, blue: 0.075))
                    .cornerRadius(15)
                    .frame(width:600, height:100)
                
                Text("Change Font")
                    .padding(.vertical, 15)
                    .padding(.horizontal, 65)
                    .font(.largeTitle.weight(.medium))
                    .foregroundColor(.white)
                    .background(Color(red: 0.729, green: 0.431, blue: 0.075))
                    .cornerRadius(15)
                    .frame(width:600, height:100)
                
                Text("Font Size")
                    .padding(.vertical, 15)
                    .padding(.horizontal, 90)
                    .font(.largeTitle.weight(.medium))
                    .foregroundColor(.white)
                    .background(Color(red: 0.729, green: 0.431, blue: 0.075))
                    .cornerRadius(15)
                    .frame(width:600, height:100)
               
                Text("Auditory Settings")
                    .padding(.vertical, 15)
                    .padding(.horizontal, 30)
                    .font(.largeTitle.weight(.medium))
                    .foregroundColor(.white)
                    .background(Color(red: 0.729, green: 0.431, blue: 0.075))
                    .cornerRadius(15)
                    .frame(width:600, height:100)
               Spacer()
            }
        }
    }
}

//page done by Ariah
//just place holder for actual settings if app goes past prototype

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
