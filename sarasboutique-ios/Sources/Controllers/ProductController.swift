//
//  ProductController.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-16.
//

import Foundation
import FirebaseFirestore

class ProductController {
    private let db = Firestore.firestore()
    private let collection = "products"
    var products: [Product] = []
    
    // Fetch all products from Firestore
    func fetchAllProducts() async throws -> [Product] {
        var products: [Product] = []
        
        do {
            let querySnapshot = try await db.collection("products").getDocuments()
            
            for document in querySnapshot.documents {
                let data = document.data()
                if let name = data["name"] as? String,
                   let description = data["description"] as? String,
                   let category = data["category"] as? String,
                   let price = data["price"] as? Int,
                   let stockQuantity = data["stockQuantity"] as? Int,
                   let size = data["size"] as? [String],
                   let color = data["color"] as? [String],
                   let material = data["material"] as? String,
                   let imageUrls = data["imageUrls"] as? [String],
                   let objectUrl = data["objectUrl"] as? String {
                    
                    let product = Product(
                        productId: document.documentID,
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
                    
                    products.append(product)
                } else {
                    print("Error: Missing or invalid data in document \(document.documentID)")
                }
            }
            return products
            
        } catch {
            print("Error getting documents: \(error)")
            throw error
        }
    }
    
    
    func fetchProductbyId(id: String) async throws -> Product {
        do {
            let data = try await db.collection("products").document(id).getDocument()
            if let productId = data["productId"] as? String,
               let name = data["name"] as? String,
               let description = data["description"] as? String,
               let category = data["category"] as? String,
               let price = data["price"] as? Int,
               let stockQuantity = data["stockQuantity"] as? Int,
               let size = data["size"] as? [String],
               let color = data["color"] as? [String],
               let material = data["material"] as? String,
               let imageUrls = data["imageUrls"] as? [String],
               let objectUrl = data["objectUrl"] as? String {
                
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
                return product
                
            } else {
                print("Error: Missing or invalid data in document \(id)")
            }
        } catch {
            print("Error getting document: \(error)")
            throw error // Rethrow the error for further handling
        }
        return Product.sample
    }
    
    func addToWishList(userId: String, product: Product) async -> Bool {
        let db = Firestore.firestore()
        let collection = "users-wishlist"

        do {
            let productData: [String: Any] = [
                "id": product.productId,        // Assuming Product has 'id'
                "name": product.name,    // Assuming Product has 'name'
                "price": product.price   // Assuming Product has 'price'
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
