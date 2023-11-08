//
//  NavigatableView.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 7.11.2023.
//

import SwiftUI

struct NavigatableView: ViewModifier {
    @Binding var route: NavigationPath

    func body(content: Content) -> some View {
        NavigationStack(path: $route) {
            content
                .navigationDestination(for: Route.self) { value in
                    value
                }
        }
    }
}

extension View {
    func navigatable(route: Binding<NavigationPath>) -> some View {
        modifier(NavigatableView(route: route))
    }
}
