//
//  SipPostCard.swift
//  MYAH
//
//  Created by Desola Fujah on 8/7/26.
//

import SwiftUI

struct SipPostCard: View {
    let post: SipPost

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .font(.title)

                VStack(alignment: .leading, spacing: 2) {
                    Text(post.authorName)
                        .font(.headline)

                    Text(post.cafeName)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }

                Spacer()

                Text(post.createdAt, style: .relative)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal)

            Image(post.mediaName)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 340)
                .clipped()

            HStack(spacing: 18) {
                Label(
                    "\(post.likeCount)",
                    systemImage: post.isLiked ? "heart.fill" : "heart"
                )

                Image(systemName: "bubble.right")
                Image(systemName: "square.and.arrow.up")

                Spacer()

                if post.isDailyDrip {
                    Text("Daily Drip")
                        .font(.caption.weight(.semibold))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(AppColors.cream)
                        .clipShape(Capsule())
                }
            }
            .foregroundStyle(AppColors.espresso)
            .padding(.horizontal)

            Text(post.caption)
                .font(.body)
                .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(post.tags, id: \.self) { tag in
                        VibeTag(title: tag)
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding(.vertical)
        .background(Color.white)
    }
}
