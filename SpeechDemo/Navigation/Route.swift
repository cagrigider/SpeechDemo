//
//  Route.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 7.11.2023.
//

import Foundation
import SwiftUI
import AppIntents

enum Tab: String, AppEnum {
    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Tab"
    static var caseDisplayRepresentations: [Tab : DisplayRepresentation] =  [
        .movies: .init(stringLiteral: "movies"),
        .tvSeries: .init(stringLiteral: "tvSeries")
    ]

    case movies
    case tvSeries
}

enum Route {
    case detail(item: DetailItem)
    case asdsad

    var desc: String {
        switch self {
        case .detail:
            return "Detail"
        case .asdsad:
            return ""
        }
    }
}

extension Route: View {
    var body: some View {
        switch self {
        case .detail(let item):
            DetailView(item: item)
        case .asdsad:
            EmptyView()
        }
    }
}

extension Route: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.hashValue)
    }

    static func == (lhs: Route, rhs: Route) -> Bool {
        switch (lhs, rhs) {
        case (.detail(let lhsValue), .detail(let rhsValue)):
            return lhsValue.id == rhsValue.id
        case (.asdsad, .asdsad):
            return true
        default:
            return false
        }
    }
}
