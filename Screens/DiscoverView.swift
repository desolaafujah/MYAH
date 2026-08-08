//
//  DiscoverView.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct DiscoverView: View {
    @State private var searchText = ""

    private var filteredShops: [Shop] {
        guard !searchText.isEmpty else {
            return MockData.shops
        }

        return MockData.shops.filter { shop in
            shop.name.localizedCaseInsensitiveContains(searchText) ||
            shop.neighborhood.localizedCaseInsensitiveContains(searchText)
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: AppSpacing.medium) {
                    ForEach(filteredShops) { shop in
                        NavigationLink(value: shop) {
                            ShopCard(shop: shop)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationTitle("Discover")
            .searchable(
                text: $searchText,
                prompt: "Search coffee shops"
            )
            .navigationDestination(for: Shop.self) { shop in
                ShopDetailView(shop: shop)
            }
        }
    }
}

#Preview {
    DiscoverView()
}
