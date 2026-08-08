//
//  SectionHeader.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct SectionHeader: View {
    let title: String
    var buttonTitle: String?
    var action: (() -> Void)?

    var body: some View {
        HStack {
            Text(title)
                .font(.title3)
                .fontWeight(.bold)

            Spacer()

            if let buttonTitle, let action {
                Button(buttonTitle, action: action)
                    .font(.subheadline)
                    .foregroundStyle(AppColors.espresso)
            }
        }
    }
}
