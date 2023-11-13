//
//  NavigationRouter.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 7.11.2023.
//

import Foundation
import SwiftUI

final class NavigationRouter: ObservableObject {
    @Published var selectedTab: Tab = .movies
    @Published var moviesRoutes = NavigationPath()
    @Published var tvSeriesRoutes = NavigationPath()
    @Published var speechPresented = false

    @Published var detailItemName: String?

    static var shared: NavigationRouter = NavigationRouter()

    func push(_ tab: Tab? = nil, screen: Route?) {
        if let tab {
            selectedTab = tab
        }

        guard let screen else { return }

        switch selectedTab {
        case .movies:
            moviesRoutes.append(screen)
        case .tvSeries:
            tvSeriesRoutes.append(screen)
        }
    }
}
