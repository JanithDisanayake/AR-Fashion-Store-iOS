//
//  WishListView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-04.
//

import SwiftUI

//struct Item: Identifiable {
//    let id = UUID()
//    let name: String
//    let description: String
//    let imageName: String
//}

struct WishListView: View {
    @State private var products: [Product] = []
    @State private var isLoading: Bool = false
    @State private var errorMessage: String?
    
    private let wishlistController = WishlistController()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(0..<products.count / 2, id: \.self) { index in
                        HStack(spacing: 25) {
                            CardView(item: products[index * 2])
                            if (index * 2 + 1) < products.count {
                                CardView(item: products[index * 2 + 1])
                            }
                        }
                    }
                    if products.count % 2 != 0 {
                        HStack {
                            CardView(item: products.last!)
                        }
                    }
                }
                .padding()
                .padding(.horizontal, 50)
                .task {
                    await fetchProducts()
                }
            }
            .navigationTitle("Home")
            
        }
    }
    
    private func fetchProducts() async {
        do {
            let userId = "kt6kzM9eGfkCeq2TZhVq"
            let x = await wishlistController.getAllWishlistItems(userId: userId)
            print("Data \(x)")

        } catch {
            print("Error fetching products:", error)
        }
        
    }
}

#Preview {
    WishListView()
}
