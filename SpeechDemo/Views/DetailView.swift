//
//  DetailView.swift
//  SpeechDemo
//
//  Created by Gider, Cagri on 7.11.2023.
//

import SwiftUI

struct DetailView: View {
    var item: DetailItem

    var body: some View {
        VStack {
            Text(item.name)
                .font(.title)
            Text(item.detail)
                .font(.subheadline)
        }
        .padding()
    }
}

#Preview {
    DetailView(item: .init(name: "Test Item", detail: "Test Detail String"))
}
