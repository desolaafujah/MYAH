//
//  MainTabView.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label{
                        Text("Home")
                    } icon: {
                        Image("HomeBrewIcon")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 2, height: 2)
                    }
                }

            DiscoverView()
                .tabItem {
                    Label("Discover", systemImage: "magnifyingglass")
                }

            SavedView()
                .tabItem {
                    Label("Saved", systemImage: "bookmark")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .tint(AppColors.espresso)
    }
}
