//
//  SpeechView.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 10.11.2023.
//

import SwiftUI
import AVFoundation

struct SpeechView: View {
    @StateObject var speechRecognizer = SpeechRecognizer()
    @State var confirmationPopupShowed = false
    @State private var isRecording = false
    @State private var tab: Tab?

    var body: some View {
        VStack(alignment: .leading) {
            Text("Transcript: \n\(speechRecognizer.transcript)")
                .font(.headline)
                .padding()
            Spacer()
            HStack {
                Button(action: {
                    startListening()
                }, label: {
                    Text("Start")
                })
                .padding()
                .disabled(isRecording)

                Button(action: {
                    stopListening()
                }, label: {
                    Text("Stop")
                })
                .padding()
                .disabled(!isRecording)
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .alert("Confirm \(tab?.rawValue ?? "nil")",
               isPresented: $confirmationPopupShowed) {
            HStack {
                Button(role: .destructive, action: {
                    navigate()
                }, label: {
                    Text("Confirm")
                })
                Button(role: .cancel, action: {
                }, label: {
                    Text("Cancel")
                        .foregroundStyle(Color.yellow)
                })
            }
        }
    }

    private func startListening() {
        isRecording = true
        speechRecognizer.resetTranscript()
        speechRecognizer.startTranscribing()
    }

    private func stopListening() {
        isRecording = false
        speechRecognizer.stopTranscribing()
        checkTranscriptRoutes()
    }

    private func checkTranscriptRoutes() {
        let tabs = Tab.allCases.map { $0.rawValue }

        let words = speechRecognizer.transcript.split(separator: " ").map { String($0) }
        let selectedTab = words.first { word in
            tabs.contains(word)
        }

        tab = Tab(rawValue: selectedTab ?? "")
        guard tab != nil else { return }
        confirmationPopupShowed = true
    }

    private func navigate() {
        NavigationRouter.shared.speechPresented = false
        NavigationRouter.shared.push(tab, screen: nil)
    }
}

#Preview {
    SpeechView()
}
