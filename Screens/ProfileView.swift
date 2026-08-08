//
//  ProfileView.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct ProfileView: View {
    let profile = MockData.profile

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: AppSpacing.large) {
                    profileHeader

                    VStack(alignment: .leading, spacing: AppSpacing.medium) {
                        SectionHeader(
                            title: "My Top Coffee Shops",
                            buttonTitle: "Edit"
                        ) {
                            print("Edit top shops")
                        }

                        ForEach(profile.topShops) { shop in
                            NavigationLink(value: shop) {
                                ShopCard(shop: shop)
                            }
                            .buttonStyle(.plain)
                        }

                        SectionHeader(title: "Recent Check-Ins")

                        ForEach(profile.recentCheckIns) { checkIn in
                            CheckInCard(checkIn: checkIn)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Profile")
            .navigationDestination(for: Shop.self) { shop in
                ShopDetailView(shop: shop)
            }
        }
    }

    private var profileHeader: some View {
        VStack(spacing: AppSpacing.small) {
            Image(profile.profileImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())

            Text("@\(profile.username)")
                .font(.title2)
                .fontWeight(.bold)

            Label(
                profile.favoriteDrink,
                systemImage: "cup.and.saucer.fill"
            )
            .foregroundStyle(AppColors.secondaryText)
        }
    }
}
