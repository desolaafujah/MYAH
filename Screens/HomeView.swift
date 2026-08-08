//
//  HomeView.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: AppSpacing.large) {
                    HeaderView()

                    SectionHeader(
                        title: "Popular Near You",
                        buttonTitle: "See all"
                    ) {
                        print("See all shops")
                    }

                    ForEach(MockData.shops) { shop in
                        NavigationLink(value: shop) {
                            ShopCard(shop: shop)
                        }
                        .buttonStyle(.plain)
                    }

                    SectionHeader(title: "Recent Check-Ins")

                    ForEach(MockData.checkIns) { checkIn in
                        CheckInCard(checkIn: checkIn)
                    }
                }
                .padding()
            }
            .background(AppColors.background)
            .navigationDestination(for: Shop.self) { shop in
                ShopDetailView(shop: shop)
            }
        }
    }
}
