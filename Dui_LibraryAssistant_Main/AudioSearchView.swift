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
        Text("Audio Search")
        VStack {
            Text(speechRecognizer.transcript)
                .padding()
            
            Button(action: {
                if !isRecording {
                    speechRecognizer.transcribe()
                } else {
                    speechRecognizer.stopTranscribing()
                }
                
                isRecording.toggle()
            }) {
                Text(isRecording ? "Stop" : "Record")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(isRecording ? Color.red : Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct AudioSearchView_Previews: PreviewProvider {
    static var previews: some View {
        AudioSearchView()
    }
}
