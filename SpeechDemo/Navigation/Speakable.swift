//
//  Speakable.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 13.11.2023.
//

import SwiftUI

struct SpeakableView: ViewModifier {
    @StateObject private var router = NavigationRouter.shared

    func body(content: Content) -> some View {
        NavigationStack {
            content
                .toolbar {
                    Button(action: {
                        NavigationRouter.shared.speechPresented = true
                    }, label: {
                        Image(systemName: "mic")
                    })
                }
                .sheet(isPresented: $router.speechPresented, content: {
                    SpeechView()
                })
        }
    }
}

extension View {
    func speakable() -> some View {
        modifier(SpeakableView())
    }
}
