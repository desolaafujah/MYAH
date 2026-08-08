//
//  MenuItemCard.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct MenuItemCard: View {
    let item: MenuItem

    var body: some View {
        HStack(spacing: AppSpacing.medium) {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 6) {
                Text(item.name)
                    .font(.headline)

                Text(item.description)
                    .font(.subheadline)
                    .foregroundStyle(AppColors.secondaryText)
                    .lineLimit(2)

                Text(item.price, format: .currency(code: "USD"))
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }

            Spacer()
        }
        .padding()
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    MenuItemCard(item: MockData.mapleLatte)
        .padding()
}
