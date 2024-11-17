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
    
    static let sample = Product(
        productId: "1",
        name: "Sample Product",
        description: "A great sample product.",
        category: "Category",
        price: 2500,
        stockQuantity: 5,
        size: ["S", "M", "L"],
        color: ["Red", "Blue"],
        material: "Cotton",
        imageUrls: ["https://example.com/image.jpg"],
        objectUrl: "https://example.com/object.obj"
    )
}
