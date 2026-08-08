//
//  Shop.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//
import Foundation

struct Shop: Identifiable, Hashable {
    let id: UUID
    let name: String
    let neighborhood: String
    let description: String
    let rating: Double
    let imageName: String
    let vibes: [String]
    let seasonalItems: [MenuItem]
}



