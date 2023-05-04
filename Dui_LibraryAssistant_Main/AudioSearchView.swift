//
//  AudioSearchView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI

struct AudioSearchView: View {
    @StateObject var speechRecognizer = SpeechRecognizer()
    @State private var isRecording = false
    //Trying to pass the title onwards
    @State private var title = ""
    var body: some View {
        ZStack {
            Color(red: 0.99, green: 0.96, blue: 0.9)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Please say what book you are looking for.")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    .padding()
                Spacer()
                Text(speechRecognizer.transcript)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                    .padding()
                Spacer()
                Image(isRecording ? "icon_mic2" : "icon_mic")
                    .resizable()
                    .scaledToFit()
                    .frame(width:200, height:200)
                    
                Spacer()
                Button(action: {
                    if !isRecording {
                        speechRecognizer.transcribe()
                    } else {
                        speechRecognizer.stopTranscribing()
                        
                        //trying to pass on the title
                        title = speechRecognizer.transcript
                    }
                    
                    isRecording.toggle()
                }) {
                    Text(isRecording ? "Stop" : "Listen")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.horizontal, 120)
                        .padding(.vertical, 15)
                        .background(isRecording ? Color(red: 0.7, green: 0.4, blue: 0.1) : Color(red: 0.071, green: 0.325, blue: 0.463))
                        .cornerRadius(15)
                    
                }
                
                //more passing the title
                NavigationLink(destination: TitleEnteredView(findBook: $title)){ Text("Search")
                            .cornerRadius(15)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 110)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                    }
                    .background(Color(red: 0.44, green: 0.05, blue: 0.48))
                        .cornerRadius(15)
                        .padding(.maximum(20,0))
                        .padding(.vertical, 30)
                
            }
            
        }
    }
}

struct AudioSearchView_Previews: PreviewProvider {
    static var previews: some View {
        AudioSearchView()
    }
}
