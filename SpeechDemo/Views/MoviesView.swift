//
//  MoviesView.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 7.11.2023.
//

import SwiftUI

struct MoviesView: View {
    @StateObject var router = NavigationRouter.shared

    let exampleMovies: [DetailItem] = .exampleMovies

    var body: some View {
        List(exampleMovies) { movie in
            Text(movie.name)
        }
        .navigatable(route: $router.moviesRoutes)
        .onAppear {
            self.checkForDetail()
        }
    }

    private func checkForDetail() {
        guard let detailItemName = router.detailItemName,
              let detailItem = exampleMovies.first(where: { $0.name == detailItemName }) else { return }

        router.detailItemName = nil
        router.moviesRoutes.append(Route.detail(item: detailItem))
    }
}

#Preview {
    MoviesView()
}
