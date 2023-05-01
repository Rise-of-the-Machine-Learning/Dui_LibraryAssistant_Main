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
    var body: some View {
        ZStack {
            Color(red: 0.99, green: 0.96, blue: 0.9)
                .ignoresSafeArea()
            VStack {
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
                    .frame(width:100, height:100)
                Button(action: {
                    if !isRecording {
                        speechRecognizer.transcribe()
                    } else {
                        speechRecognizer.stopTranscribing()
                    }
                    
                    isRecording.toggle()
                }) {
                    Text(isRecording ? "Stop" : "Listen")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                        .background(isRecording ? Color(red: 0.7, green: 0.4, blue: 0.1) : Color(red: 0.1, green: 0.4, blue: 0.5))
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct AudioSearchView_Previews: PreviewProvider {
    static var previews: some View {
        AudioSearchView()
    }
}
