//
//  CartItem.swift
//  sarasboutique-iosTests
//
//  Created by Janith Personal on 2024-11-23.
//

import XCTest
@testable import sarasboutique_ios

final class CartItemTests: XCTestCase {
    
    func testSampleCartItemInitialization() {
        let sampleCartItem = CartItem.sample
        XCTAssertEqual(sampleCartItem.userId, "user123")
        XCTAssertEqual(sampleCartItem.quantity, 2)
        
        XCTAssertEqual(sampleCartItem.product.productId, "1")
        XCTAssertEqual(sampleCartItem.product.name, "Sample Product")
        XCTAssertEqual(sampleCartItem.product.price, 2500)
    }
    
    func testCartItemEncoding() throws {
        let cartItem = CartItem.sample
        let jsonData = try JSONEncoder().encode(cartItem)
        let jsonString = String(data: jsonData, encoding: .utf8)
        
        XCTAssertNotNil(jsonString)
        XCTAssertTrue(jsonString!.contains("\"userId\":\"user123\""))
        XCTAssertTrue(jsonString!.contains("\"quantity\":2"))
        XCTAssertTrue(jsonString!.contains("\"name\":\"Sample Product\"")) // Verifies nested product encoding
    }
    
    func testCartItemDecoding() throws {
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
            },
            "quantity": 2
        }
        """
        let jsonData = json.data(using: .utf8)!
        let decodedCartItem = try JSONDecoder().decode(CartItem.self, from: jsonData)
        
        XCTAssertEqual(decodedCartItem.userId, "user123")
        XCTAssertEqual(decodedCartItem.quantity, 2)
        
        XCTAssertEqual(decodedCartItem.product.productId, "1")
        XCTAssertEqual(decodedCartItem.product.name, "Sample Product")
        XCTAssertEqual(decodedCartItem.product.price, 2500)
    }
}
