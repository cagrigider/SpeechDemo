//
//  SpeechAppShortcutProvider.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 8.11.2023.
//

import AppIntents

struct SpeechAppShortcutProvider: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: OpenScreenIntent(),
            phrases: [
                "Open \(.applicationName) with custom screen"
            ],
            shortTitle: "Open Speech App",
            systemImageName: "popcorn.fill"
        )
        AppShortcut(
            intent: OpenDetailScreenIntent(),
            phrases: [
                "Open \(.applicationName) detail screen"
            ],
            shortTitle: "Open Speech App",
            systemImageName: "popcorn.fill"
        )
    }
}
