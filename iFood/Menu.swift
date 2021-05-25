//
//  Menu.swift
//  iFood
//
//  Created by Bonggu Lee on 2021/05/25.
//

import SwiftUI

struct MenuSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var price: Int
    var benefits: [String]
    var description: String
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    
    #if DEBUG
    static let example = MenuItem(id: UUID(),
                                  name: "Chicken Tikka",
                                  price: 8,
                                  benefits: ["authentic", "bestseller", "spicy"],
                                  description: "Spicy, juicy and filled with flavours, these mouth watering chikka tikkas are evryone's favourite since days and continue to be one!!")
    #endif
}
