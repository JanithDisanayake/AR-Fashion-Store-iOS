//
//  Product.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-16.
//

import Foundation

struct Product: Codable {
    var productId: String?
    var name: String
    var description: String
    var category: String
    var price: Int
    var stockQuantity: Int
    var size: [String]
    var color: [String]
    var material: String
    var imageUrls: [String]
    var objectUrl: String
}
