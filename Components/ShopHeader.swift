//
//  ShopHeader.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct ShopHeader: View {
    let shop: Shop
    let isSaved: Bool
    let onSave: () -> Void
    let onCheckIn: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.medium) {
            ZStack(alignment: .topTrailing) {
                Image(shop.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 260)
                    .frame(maxWidth: .infinity)
                    .clipped()

                Button(action: onSave) {
                    Image(systemName: isSaved ? "bookmark.fill" : "bookmark")
                        .font(.title3)
                        .foregroundStyle(AppColors.espresso)
                        .padding(12)
                        .background(.ultraThinMaterial)
                        .clipShape(Circle())
                }
                .padding()
            }

            VStack(alignment: .leading, spacing: AppSpacing.small) {
                Text(shop.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                HStack {
                    Image(systemName: "mappin")
                    Text(shop.neighborhood)
                }
                .foregroundStyle(AppColors.secondaryText)

                HStack {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)

                    Text(shop.rating, format: .number.precision(.fractionLength(1)))
                }

                PrimaryButton(
                    title: "Check In",
                    systemImage: "mappin.and.ellipse",
                    action: onCheckIn
                )
            }
            .padding(.horizontal)
        }
    }
}
