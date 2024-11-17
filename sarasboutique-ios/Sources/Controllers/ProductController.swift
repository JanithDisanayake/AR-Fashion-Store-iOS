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
    
    
    
    func fetchProductbyId(byId productId: String, completion: @escaping (Result<Product, Error>) -> Void) {
        db.collection(collection).document(productId).getDocument { (document, error) in
            if let document = document, document.exists {
                do {
                    let product = try document.data(as: Product.self)
                    completion(.success(product))
                } catch {
                    completion(.failure(error))
                }
            } else if let error = error {
                completion(.failure(error))
            } else {
                completion(.failure(NSError(domain: "Firestore", code: 404, userInfo: [NSLocalizedDescriptionKey: "Product not found"])))
            }
        }
    }
}
