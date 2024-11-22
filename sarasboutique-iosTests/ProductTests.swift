//
//  ProductTests.swift
//  sarasboutique-iosTests
//
//  Created by Janith Personal on 2024-11-23.
//

import XCTest
@testable import sarasboutique_ios

final class ProductTests: XCTestCase {
    
    func testSampleProductInitialization() {
        let sampleProduct = Product.sample
        XCTAssertEqual(sampleProduct.productId, "1")
        XCTAssertEqual(sampleProduct.name, "Sample Product")
        XCTAssertEqual(sampleProduct.description, "A great sample product.")
        XCTAssertEqual(sampleProduct.category, "Category")
        XCTAssertEqual(sampleProduct.price, 2500)
        XCTAssertEqual(sampleProduct.stockQuantity, 5)
        XCTAssertEqual(sampleProduct.size, ["S", "M", "L"])
        XCTAssertEqual(sampleProduct.color, ["Red", "Blue"])
        XCTAssertEqual(sampleProduct.material, "Cotton")
        XCTAssertEqual(sampleProduct.imageUrls, ["https://kmd-assets.imgix.net/catalog/product/b/0/b0692_oi6_solid_womens_organic_cotton_short_sleeve_tee_purple_a.jpg"])
        XCTAssertEqual(sampleProduct.objectUrl, "https://example.com/object.obj")
    }
    
    func testProductEncoding() throws {
        let product = Product.sample
        let jsonData = try JSONEncoder().encode(product)
        let jsonString = String(data: jsonData, encoding: .utf8)
        
        XCTAssertNotNil(jsonString)
        XCTAssertTrue(jsonString!.contains("\"productId\":\"1\""))
        XCTAssertTrue(jsonString!.contains("\"name\":\"Sample Product\""))
        XCTAssertTrue(jsonString!.contains("\"price\":2500"))
        XCTAssertTrue(jsonString!.contains("\"size\":[\"S\",\"M\",\"L\"]"))
        XCTAssertTrue(jsonString!.contains("\"objectUrl\":\"https://example.com/object.obj\""))
    }
    
    func testProductDecoding() throws {
        let json = """
        {
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
        """
        let jsonData = json.data(using: .utf8)!
        let decodedProduct = try JSONDecoder().decode(Product.self, from: jsonData)
        
        XCTAssertEqual(decodedProduct.productId, "1")
        XCTAssertEqual(decodedProduct.name, "Sample Product")
        XCTAssertEqual(decodedProduct.description, "A great sample product.")
        XCTAssertEqual(decodedProduct.category, "Category")
        XCTAssertEqual(decodedProduct.price, 2500)
        XCTAssertEqual(decodedProduct.stockQuantity, 5)
        XCTAssertEqual(decodedProduct.size, ["S", "M", "L"])
        XCTAssertEqual(decodedProduct.color, ["Red", "Blue"])
        XCTAssertEqual(decodedProduct.material, "Cotton")
        XCTAssertEqual(decodedProduct.imageUrls, ["https://kmd-assets.imgix.net/catalog/product/b/0/b0692_oi6_solid_womens_organic_cotton_short_sleeve_tee_purple_a.jpg"])
        XCTAssertEqual(decodedProduct.objectUrl, "https://example.com/object.obj")
    }
}
