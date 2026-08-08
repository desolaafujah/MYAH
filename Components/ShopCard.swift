//
//  ShopCard.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct ShopCard: View {
    let shop: Shop

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.small) {
            Image(shop.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 190)
                .frame(maxWidth: .infinity)
                .clipped()

            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Text(shop.name)
                        .font(.headline)

                    Spacer()

                    HStack(spacing: 3) {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)

                        Text(shop.rating, format: .number.precision(.fractionLength(1)))
                    }
                    .font(.subheadline)
                }

                Text(shop.neighborhood)
                    .font(.subheadline)
                    .foregroundStyle(AppColors.secondaryText)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(shop.vibes, id: \.self) { vibe in
                            VibeTag(title: vibe)
                        }
                    }
                }
            }
            .padding()
        }
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .overlay {
            RoundedRectangle(cornerRadius: 18)
                .stroke(AppColors.border, lineWidth: 1)
        }
    }
}

#Preview {
    ShopCard(shop: MockData.commonGrace)
        .padding()
}
