//
//  ShopDetailView.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct ShopDetailView: View {
    let shop: Shop

    @State private var isSaved = false
    @State private var isShowingCheckIn = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: AppSpacing.large) {
                ShopHeader(
                    shop: shop,
                    isSaved: isSaved,
                    onSave: {
                        isSaved.toggle()
                    },
                    onCheckIn: {
                        isShowingCheckIn = true
                    }
                )

                VStack(alignment: .leading, spacing: AppSpacing.medium) {
                    SectionHeader(title: "Quick Vibe Check")

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(shop.vibes, id: \.self) { vibe in
                                VibeTag(title: vibe)
                            }
                        }
                    }

                    SectionHeader(title: "About")

                    Text(shop.description)
                        .foregroundStyle(AppColors.secondaryText)

                    SectionHeader(
                        title: "Seasonal Menu",
                        buttonTitle: "See all"
                    ) {
                        print("See all tapped")
                    }

                    ForEach(shop.seasonalItems) { item in
                        MenuItemCard(item: item)
                    }

                    SectionHeader(title: "Recent Check-Ins")

                    ForEach(MockData.checkIns) { checkIn in
                        CheckInCard(checkIn: checkIn)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.bottom, AppSpacing.extraLarge)
        }
        .background(AppColors.background)
        .ignoresSafeArea(edges: .top)
        .sheet(isPresented: $isShowingCheckIn) {
            CheckInFormView(shop: shop)
        }
    }
}
