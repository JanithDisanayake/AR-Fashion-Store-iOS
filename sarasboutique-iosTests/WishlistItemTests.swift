//
//  WishlistItemTests.swift
//  sarasboutique-iosTests
//
//  Created by Janith Personal on 2024-11-23.
//

import XCTest
@testable import sarasboutique_ios

final class WishlistItemTests: XCTestCase {

    func testWishlistItemInitialization() {
        let sampleProduct = Product.sample
        let wishlistItem = WishlistItem(userId: "user123", product: sampleProduct)
        
        XCTAssertEqual(wishlistItem.userId, "user123")
        XCTAssertEqual(wishlistItem.product.productId, sampleProduct.productId)
        XCTAssertEqual(wishlistItem.product.name, sampleProduct.name)
    }

    func testWishlistItemEncoding() throws {
        let sampleProduct = Product.sample
        let wishlistItem = WishlistItem(userId: "user123", product: sampleProduct)
        
        let jsonData = try JSONEncoder().encode(wishlistItem)
        let jsonString = String(data: jsonData, encoding: .utf8)
        
        XCTAssertNotNil(jsonString)
        XCTAssertTrue(jsonString!.contains("\"userId\":\"user123\""))
        XCTAssertTrue(jsonString!.contains("\"name\":\"Sample Product\"")) // Verifies nested product encoding
    }

    func testWishlistItemDecoding() throws {
        let json = """
        {
            "userId": "user123",
            "product": {
                "productId": "1",
                "name": "Sample Product",
                "description": "A great sample product.",
                "category": "Category",
                "price": 2500,
                "stockQuantity": 5,
                "size": ["S", "M", "L"],
                "color": ["Red", "Blue"],
                "material": "Cotton",
                "imageUrls": ["https://kmd-assets.imgix.net/catalog/product/b/0/b0692_oi6_solid_womens_organic_cotton_short_sleeve_tee_purple_a.jpg"],
                "objectUrl": "https://example.com/object.obj"
            }
        }
        """
        let jsonData = json.data(using: .utf8)!
        let decodedWishlistItem = try JSONDecoder().decode(WishlistItem.self, from: jsonData)
        
        XCTAssertEqual(decodedWishlistItem.userId, "user123")
        XCTAssertEqual(decodedWishlistItem.product.productId, "1")
        XCTAssertEqual(decodedWishlistItem.product.name, "Sample Product")
        XCTAssertEqual(decodedWishlistItem.product.price, 2500)
    }
}
