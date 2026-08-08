//
//  SavedView.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct SavedView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "No Saved Shops",
                systemImage: "bookmark",
                description: Text(
                    "Coffee shops you save will appear here."
                )
            )
            .navigationTitle("Saved")
        }
    }
}
