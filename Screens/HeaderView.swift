//
//  HeaderView.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct HeaderView: View {
    // TODO: the MYAH icon on top
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Good morning")
                    .font(.subheadline)
                    .foregroundStyle(AppColors.secondaryText)

                Text("Find your next coffee spot")
                    .font(.title2)
                    .fontWeight(.bold)
            }

            Spacer()

            Button {
                print("Notifications")
            } label: {
                Image(systemName: "bell")
                    .font(.title3)
                    .foregroundStyle(AppColors.espresso)
            }
        }
    }
}
