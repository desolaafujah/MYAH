//
//  MockData.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//


import Foundation

enum MockData {
    static let mapleLatte = MenuItem(
        id: UUID(),
        name: "Maple Oat Latte",
        description: "Espresso, oat milk, maple syrup, and cinnamon.",
        price: 6.50,
        imageName: "maple-latte"
    )

    static let vanillaColdBrew = MenuItem(
        id: UUID(),
        name: "Vanilla Cold Brew",
        description: "Cold brew with vanilla sweet cream.",
        price: 5.75,
        imageName: "vanilla-cold-brew"
    )

    static let commonGrace = Shop(
        id: UUID(),
        name: "Common Grace Coffee",
        neighborhood: "Downtown STL",
        description: "A warm neighborhood café serving seasonal drinks and locally roasted coffee.",
        rating: 4.8,
        imageName: "common-grace",
        vibes: [
            "Cozy seating",
            "Study-friendly",
            "Outdoor seating"
        ],
        seasonalItems: [
            mapleLatte,
            vanillaColdBrew
        ]
    )

    static let upshot = Shop(
        id: UUID(),
        name: "Upshot Coffee",
        neighborhood: "Central West End",
        description: "A modern café focused on specialty coffee and community.",
        rating: 4.6,
        imageName: "upshot",
        vibes: [
            "Pour overs",
            "Natural lighting",
            "Roasts beans"
        ],
        seasonalItems: [
            vanillaColdBrew
        ]
    )

    static let shops: [Shop] = [
        commonGrace,
        upshot
    ]

    static let checkIns: [Checkin] = [
        Checkin(
            id: UUID(),
            username: "desola",
            profileImageName: "profile-placeholder",
            shopName: "Common Grace Coffee",
            drinkName: "Maple Oat Latte",
            caption: "The maple latte was really good and not too sweet.",
            date: Date()
        )
    ]

    static let profile = Profile(
        username: "desola",
        profileImageName: "profile-placeholder",
        favoriteDrink: "Iced Vanilla Latte",
        topShops: shops,
        recentCheckIns: checkIns
    )
}
