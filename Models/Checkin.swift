//
//  Checkin.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import Foundation

struct Checkin: Identifiable {
    let id: UUID
    let username: String
    let profileImageName: String
    let shopName: String
    let drinkName: String
    let caption: String
    let date: Date
}
