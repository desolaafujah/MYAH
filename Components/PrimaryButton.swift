//
//  PrimaryButton.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let systemImage: String?
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                if let systemImage {
                    Image(systemName: systemImage)
                }

                Text(title)
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundStyle(.white)
            .background(AppColors.matcha)
            .clipShape(RoundedRectangle(cornerRadius: 14))
        }
    }
}

#Preview {
    PrimaryButton(
        title: "Check In",
        systemImage: "mappin.and.ellipse"
    ) {
        print("Check in tapped")
    }
    .padding()
}
