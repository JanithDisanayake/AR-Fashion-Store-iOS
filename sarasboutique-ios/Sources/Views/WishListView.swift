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
    @State private var items: [WishlistItem] = []
    @State private var isLoading: Bool = false
    @State private var errorMessage: String?
    
    private let wishlistController = WishlistController()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(0..<items.count / 2, id: \.self) { index in
                        HStack(spacing: 25) {
                            CardView(product: items[index * 2].product)
                            if (index * 2 + 1) < items.count {
                                CardView(product: items[index * 2 + 1].product)
                            }
                        }
                    }
                    if items.count % 2 != 0 {
                        HStack {
                            CardView(product: items.last!.product)
                        }
                    }
                }
                .padding()
                .padding(.horizontal, 50)
                .task {
                    await fetchItems()
                }
            }
            .navigationTitle("Wish List")
            
        }
    }
    
    private func fetchItems() async {
        let userId = UserDataManager.shared.getCurrentUserID()
        items = await wishlistController.getAllWishlistItems(userId: userId)
    }
}

#Preview {
    WishListView()
}
