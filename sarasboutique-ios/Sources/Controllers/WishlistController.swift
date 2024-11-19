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

        do {
            let productData: [String: Any] = [
                "id": product.productId,
                "name": product.name,
                "price": product.price
            ]
            
            try await db.collection(collection).addDocument(data: [
                "userId": userId,
                "product": productData
            ])
            
            print("Successfully added to the wishlist")
            return true
            
        } catch {
            print("Error adding document: \(error)")
            return false
        }
    }
}
