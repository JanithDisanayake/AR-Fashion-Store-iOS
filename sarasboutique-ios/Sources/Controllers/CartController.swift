//
//  CartController.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-20.
//

import Foundation
import Foundation
import FirebaseFirestore

class CartController {
    let db = Firestore.firestore()
    
    func addToCart(userId: String, product: Product) async -> Bool {
        
        let collection = "cart"
        let productData: [String: Any] = [
            "productId": product.productId,
            "name": product.name,
            "description": product.description,
            "category": product.category,
            "price": product.price,
            "stockQuantity": product.stockQuantity,
            "size": product.size,
            "color": product.color,
            "material": product.material,
            "imageUrls": product.imageUrls,
            "objectUrl": product.objectUrl,
            
        ]

        let query = db.collection(collection)
            .whereField("userId", isEqualTo: userId)
            .whereField("product.productId", isEqualTo: product.productId)
        
        do {
            let snapshot = try await query.getDocuments()
            
            if snapshot.isEmpty {
                try await db.collection(collection).addDocument(data: [
                    "userId": userId,
                    "product": productData,
                    "count": 1//
                ])
                print("Product added to cart successfully.")
                return true
            } else {
                print("Product already exists in the cart.")
                return false
            }
        } catch {
            print("Error checking or adding wishlist item: \(error)")
            return false
        }
    }
    
    func getAllItemsFromCart(userId: String) async -> [WishlistItem] {
        var items: [WishlistItem] = []
        
        do {
            let querySnapshot = try await db.collection("wishlist").getDocuments()
            
            for document in querySnapshot.documents {
                let data = document.data()
                if  let userId = data["userId"] as? String,
                    let product = data["product"] as? [String: Any],
                    let productId = product["productId"] as? String,
                    let name = product["name"] as? String,
                    let description = product["description"] as? String,
                    let category = product["category"] as? String,
                    let price = product["price"] as? Int,
                    let stockQuantity = product["stockQuantity"] as? Int,
                    let size = product["size"] as? [String],
                    let color = product["color"] as? [String],
                    let material = product["material"] as? String,
                    let imageUrls = product["imageUrls"] as? [String],
                    let objectUrl = product["objectUrl"] as? String {
                    
                    
                    let product = Product(
                        productId: productId,
                        name: name,
                        description: description,
                        category: category,
                        price: price,
                        stockQuantity: stockQuantity,
                        size: size,
                        color: color,
                        material: material,
                        imageUrls: imageUrls,
                        objectUrl: objectUrl
                    )
                    
                    let item = WishlistItem(
                        userId: userId,
                        product: product
                    )
                    
                    items.append(item)
                } else {
                    print("Error: Missing or invalid data in document \(document.documentID)")
                }
            }
            return items
            
        } catch {
            print("Error getting documents: \(error)")
        }
        return items;
    }
    
    func removeItemFromCart(userId: String, productId: String) async {
        let wishlistRef = db.collection("wishlist")
        do {
            let querySnapshot = try await wishlistRef
                .whereField("userId", isEqualTo: userId)
                .whereField("product.productId", isEqualTo: productId)
                .getDocuments()
            if let document = querySnapshot.documents.first {
                try await document.reference.delete()
                print("Item removed from wishlist.")
            } else {
                print("Item not found in wishlist.")
            }
        }
        catch {
            print("Error removing item from wishlist: \(error.localizedDescription).")
        }
    }
}
