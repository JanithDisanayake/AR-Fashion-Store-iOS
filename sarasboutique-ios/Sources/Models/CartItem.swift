//
//  CartItem.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-20.
//

import Foundation

struct CartItem: Codable {
    var userId: String
    var product: Product
    var quantity: Int
    
    static let sample = CartItem(
        userId: "user123",
        product: Product.sample,
        quantity: 2
    )
}
