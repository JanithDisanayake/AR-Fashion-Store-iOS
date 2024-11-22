//
//  UserTests.swift
//  sarasboutique-iosTests
//
//  Created by Janith Personal on 2024-11-23.
//

import XCTest
@testable import sarasboutique_ios

final class UserTests: XCTestCase {
    
    func testSampleUserInitialization() {
        let sampleUser = User.sample
        XCTAssertEqual(sampleUser.userId, "No user id")
        XCTAssertEqual(sampleUser.firstName, "No first name")
        XCTAssertEqual(sampleUser.lastName, "No last name")
        XCTAssertEqual(sampleUser.email, "No email")
    }
    
    func testUserEncoding() throws {
        let user = User(userId: "12345", firstName: "John", lastName: "Doe", email: "john.doe@example.com")
        let jsonData = try JSONEncoder().encode(user)
        let jsonString = String(data: jsonData, encoding: .utf8)
        
        XCTAssertNotNil(jsonString)
        XCTAssertTrue(jsonString!.contains("12345"))
        XCTAssertTrue(jsonString!.contains("John"))
        XCTAssertTrue(jsonString!.contains("Doe"))
        XCTAssertTrue(jsonString!.contains("john.doe@example.com"))
    }
    
    func testUserDecoding() throws {
        let json = """
        {
            "userId": "12345",
            "firstName": "John",
            "lastName": "Doe",
            "email": "john.doe@example.com"
        }
        """
        let jsonData = json.data(using: .utf8)!
        let decodedUser = try JSONDecoder().decode(User.self, from: jsonData)
        
        XCTAssertEqual(decodedUser.userId, "12345")
        XCTAssertEqual(decodedUser.firstName, "John")
        XCTAssertEqual(decodedUser.lastName, "Doe")
        XCTAssertEqual(decodedUser.email, "john.doe@example.com")
    }
}
