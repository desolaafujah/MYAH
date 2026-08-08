//
//  VibeTag.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct VibeTag: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.caption)
            .fontWeight(.medium)
            .foregroundStyle(AppColors.espresso)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(AppColors.cream)
            .clipShape(Capsule())
    }
}

#Preview {
    VibeTag(title: "Cozy seating")
        .padding()
}
