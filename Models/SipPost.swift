//
//  SipPost.swift
//  MYAH
//
//  Created by Desola Fujah on 8/7/26.
//

import Foundation

struct SipPost: Identifiable, Codable{
    let id: UUID
    let authorName: String
    let authorImageName: String?
    let cafeName: String
    let cafeID: UUID
    let caption: String
    let mediaName: String
    let mediaType: MediaType
    let createdAt: Date
    let tags: [String]
    let likeCount: Int
    let isLiked: Bool
    let isDailyDrip: Bool
    
    enum MediaType: String, Codable{
        case image
        case video
    }
}
