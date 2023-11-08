//
//  OpenScreenIntent.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 8.11.2023.
//

import AppIntents

struct OpenScreenIntent: AppIntent {
    static var title: LocalizedStringResource = "Open Speech Screen"
    static var description: IntentDescription? = .init(stringLiteral: "Open a screen in Speech Demo App")

    static var openAppWhenRun: Bool = true

    @Parameter(
        title: "tab",
        requestDisambiguationDialog: "Which Tab?"
    )
    var appTab: Tab

    func perform() async throws -> some IntentResult {
        NavigationRouter.shared.push(appTab, screen: nil)

        return .result()
    }
}

struct OpenDetailScreenIntent: AppIntent {
    static var title: LocalizedStringResource = "Open Detail Screen"
    static var description: IntentDescription? = .init(stringLiteral: "Open detail screen in Speech Demo App")

    static var openAppWhenRun: Bool = true

    @Parameter(
        title: "tab",
        requestDisambiguationDialog: "Which Tab?"
    )
    var appTab: Tab


    @IntentParameter(title: "itemName", requestValueDialog: "Which movie/tv series would you like to see?")
    var itemName: String

    func perform() async throws -> some IntentResult {
        NavigationRouter.shared.detailItemName = itemName

        NavigationRouter.shared.push(appTab, screen: nil)

        return .result()
    }
}
