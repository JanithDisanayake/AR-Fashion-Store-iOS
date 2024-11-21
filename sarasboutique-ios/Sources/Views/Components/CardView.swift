//
//  CardView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-17.
//

import SwiftUI

struct CardView: View {
    let product: Product
    @State private var isFavorite = false
    
    private let wishlistController = WishlistController()
    private let productController = ProductController()
    private let cartController = CartController()

    var body: some View {
        VStack(alignment: .leading) {
            NavigationLink(destination: ProductDetailsView(product: product)) {
                VStack {
                    ZStack(alignment: .topTrailing) {
                        // Image
                        Rectangle()
                            .fill(Color.gray.opacity(0.3)) // Optional color for the placeholder rectangle
                            .frame(width: (UIScreen.main.bounds.width - 60) / 2, height: 200) // Match image size
                        
                        AsyncImage(url: URL(string: product.imageUrls[0])) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: (UIScreen.main.bounds.width - 60) / 2)
                        } placeholder: {
                            ProgressView()
                                .frame(width: (UIScreen.main.bounds.width - 60) / 2, height: 200) // Ensure ProgressView is centered within the rectangle
                        }

                        
                        VStack {
                            Button(action: {
                                Task {
                                    await alterWishList()
                                }
                            }) {
                                Image(systemName: isFavorite ? "heart.fill" : "heart")
                                    .foregroundColor(isFavorite ? .red : .black) // Red for favorite, black outline otherwise
                                    .background(.white) // Optional: Add a white background for better visibility
                                    .cornerRadius(50)
                                    .padding(3)
                            }
                            .padding(1)
                            .background(.white)
                            .cornerRadius(100)
                            
                            Button(action: {
                                Task {
                                    await alterCart()
                                }
                            }) {
                                Image(systemName: "basket")
                                    .foregroundColor(.black) // Red for favorite, black outline otherwise
                                    .background(.white) // Optional: Add a white background for better visibility
                                    .cornerRadius(50)
                                    .padding(3)
                            }
                            .padding(1)
                            .background(.white)
                            .cornerRadius(100)
                        }
                        .padding(10)
                    }
                    
                    VStack(alignment: .center, spacing: 8) {
                        Text(product.name)
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                        
                        Text("$ \(product.price / 100)")
                            .font(.body)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                }
                .frame(height: 300)
            }
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
        .frame(width: (UIScreen.main.bounds.width - 60) / 2)
        .onTapGesture {
            Task {
                // Uncomment to handle tap gesture
                // if let productId = item.productId, !productId.isEmpty {
                //     do {
                //         let product = try await productController.fetchProductbyId(id: productId)
                //         print("Fetched product: \(product)")
                //     } catch {
                //         print("Error fetching product: \(error)")
                //     }
                // }
            }
        }
        .task {
            let userId = UserDataManager.shared.getCurrentUserID()
            let x = "desiredProductId"
            let items = await wishlistController.getAllWishlistItems(userId: userId)
            if let matchingItem = items.first(where: { $0.product.productId == product.productId }) {
                isFavorite = true
                // print("Favourite item: \(matchingItem.product.name)")
            } else {
                isFavorite = false
                // print("Not a Favourite item")
            }
        }
    }
    
    func alterWishList() async {
        print("is Fav: \(isFavorite)")
        if !isFavorite {
            isFavorite = true
            let userId = UserDataManager.shared.getCurrentUserID()
            _ = await wishlistController.addToWishList(userId: userId, product: product)
        } else {
            isFavorite = false
            let userId = UserDataManager.shared.getCurrentUserID()
            await wishlistController.removeItemFromWishlist(userId: userId, productId: product.productId!)
        }
    }
    
    func alterCart() async {
        let userId = UserDataManager.shared.getCurrentUserID()
        await cartController.addToCart(userId: userId, product: product)
    }
        
}

#Preview {
    CardView(product: Product.sample)
}
