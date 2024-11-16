//
//  WishListView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-04.
//

import SwiftUI

struct WishListView: View {
    
    let items: [Item] = [
        Item(name: "Item 1", description: "Description for item 1", imageName: "photo1"),
        Item(name: "Item 2", description: "Description for item 2", imageName: "photo2"),
        Item(name: "Item 3", description: "Description for item 3", imageName: "photo3"),
        Item(name: "Item 4", description: "Description for item 4", imageName: "photo4"),
        Item(name: "Item 5", description: "Description for item 5", imageName: "photo5"),
        Item(name: "Item 6", description: "Description for item 6", imageName: "photo6")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    // Create two cards per row with spacing
                    ForEach(0..<items.count / 2, id: \.self) { index in
                        HStack(spacing: 25) { // Add spacing between cards in the row
                            // First Card
                            CardView(item: items[index * 2])
                            
                            // Second Card (Check if there's a second item in the pair)
                            if (index * 2 + 1) < items.count {
                                CardView(item: items[index * 2 + 1])
                            }
                        }
                    }
                    
                    // Handle remaining item if there is an odd number of items
                    if items.count % 2 != 0 {
                        HStack {
                            CardView(item: items.last!)
                        }
                    }
                }
                .padding()
                .padding(.horizontal, 50)
            }
            .navigationTitle("Wish List")
        }
    }
}

#Preview {
    WishListView()
}
