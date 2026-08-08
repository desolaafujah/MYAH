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
                            .renderingMode(.original)
                    }
                }

            DiscoverView()
                .tabItem {
                    Label{
                        Text("Discover")
                    } icon: {
                        Image("DiscoverIcon")
                            .renderingMode(.original)
                    }
                }
                    
            SavedView()
                .tabItem {
                    Label{
                        Text("SipStream")
                    } icon: {
                        Image("SipStreamIcon")
                            .renderingMode(.original)
                    }
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .tint(AppColors.espresso)
    }
}
