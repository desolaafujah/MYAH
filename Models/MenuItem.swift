//
//  Menu.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//
import Foundation

struct MenuItem: Identifiable, Hashable{
    let id: UUID
    let name: String
    let description: String
    let price: Double
    let imageName: String
}
