//
//  ContentView.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 7.11.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var router = NavigationRouter.shared

    var body: some View {
        TabView(selection: $router.selectedTab) {
            MoviesView()
                .tabItem { Image(systemName: "movieclapper") }
                .tag(Tab.movies)

            TVSeriesView()
                .tabItem { Image(systemName: "tv") }
                .tag(Tab.tvSeries)
        }
    }
}

#Preview {
    ContentView()
}
