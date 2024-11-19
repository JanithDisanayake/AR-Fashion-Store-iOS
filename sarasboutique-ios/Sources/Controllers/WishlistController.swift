//
//  WishlistController.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-19.
//

import Foundation
import Foundation
import FirebaseFirestore

class WishlistController {
    func addToWishList(userId: String, product: Product) async -> Bool {
        let db = Firestore.firestore()
        let collection = "wishlist"
        let productData: [String: Any] = [
            "productId": product.productId,
            "name": product.name,
            "price": product.price
        ]

        let query = db.collection(collection)
            .whereField("userId", isEqualTo: userId)
            .whereField("product.productId", isEqualTo: product.productId) // Assuming `productData` contains `productId`
        
        do {
            let snapshot = try await query.getDocuments()
            
            if snapshot.isEmpty {
                try await db.collection(collection).addDocument(data: [
                    "userId": userId,
                    "product": productData
                ])
                print("Product added to wishlist successfully.")
                return true
            } else {
                print("Product already exists in the wishlist.")
                return false
            }
        } catch {
            print("Error checking or adding wishlist item: \(error)")
            return false
        }
    }
}
