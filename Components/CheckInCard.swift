//
//  CheckInCard.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct CheckInCard: View {
    let checkIn: Checkin

    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.medium) {
            HStack {
                Image(checkIn.profileImageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 44, height: 44)
                    .clipShape(Circle())

                VStack(alignment: .leading) {
                    Text(checkIn.username)
                        .fontWeight(.semibold)

                    Text(checkIn.shopName)
                        .font(.caption)
                        .foregroundStyle(AppColors.secondaryText)
                }

                Spacer()

                Image(systemName: "ellipsis")
            }

            Text(checkIn.caption)
                .font(.body)

            HStack {
                Image(systemName: "cup.and.saucer.fill")
                    .foregroundStyle(AppColors.espresso)

                Text(checkIn.drinkName)
                    .font(.subheadline)
                    .fontWeight(.medium)
            }

            Text(checkIn.date, style: .relative)
                .font(.caption)
                .foregroundStyle(AppColors.secondaryText)
        }
        .padding()
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}
