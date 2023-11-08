//
//  TVSeriesView.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 7.11.2023.
//

import SwiftUI

struct TVSeriesView: View {
    @StateObject var router = NavigationRouter.shared

    let exampleSeries: [DetailItem] = .exampleSeries

    var body: some View {
        List(exampleSeries) { movie in
            Text(movie.name)
        }
        .navigatable(route: $router.tvSeriesRoutes)
        .onAppear {
            self.checkForDetail()
        }
    }

    private func checkForDetail() {
        guard let detailItemName = router.detailItemName,
              let detailItem = exampleSeries.first(where: { $0.name.lowercased() == detailItemName.lowercased() }) else { return }

        router.detailItemName = nil
        router.tvSeriesRoutes.append(Route.detail(item: detailItem))
    }
}

#Preview {
    ContentView()
}
