//
//  MockSipPosts.swift
//  MYAH
//
//  Created by Desola Fujah on 8/7/26.
//

import Foundation

enum MockSipPosts {
    static let posts: [SipPost] = [
        SipPost(
            id: UUID(),
            authorName: "Maya",
            authorImageName: nil,
            cafeName: "Common Grace Coffee",
            cafeID: UUID(),
            caption: "The honey lavender latte was perfect today.",
            mediaName: "MockCoffeePost1",
            mediaType: .image,
            createdAt: .now.addingTimeInterval(-1_800),
            tags: ["Cozy", "Latte", "Study-friendly"],
            likeCount: 24,
            isLiked: false,
            isDailyDrip: true
        ),
        SipPost(
            id: UUID(),
            authorName: "Jordan",
            authorImageName: nil,
            cafeName: "Upshot Coffee",
            cafeID: UUID(),
            caption: "Found my new favorite patio spot.",
            mediaName: "MockCoffeePost2",
            mediaType: .image,
            createdAt: .now.addingTimeInterval(-7_200),
            tags: ["Outdoor seating", "Matcha"],
            likeCount: 18,
            isLiked: true,
            isDailyDrip: false
        )
    ]
}
