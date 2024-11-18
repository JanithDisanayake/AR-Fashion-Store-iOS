//
//  CardView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-17.
//

import SwiftUI

struct CardView: View {
    let item: Product
    @State private var isFavorite = false
    
    private let productController = ProductController()

    var body: some View {
        
        VStack(alignment: .leading) {
            ZStack(alignment: .topTrailing) {
                // Image
                Image(item.imageUrls[0])
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .cornerRadius(10)
                
                // Heart-shaped button
                Button(action: {
                    isFavorite.toggle()
                }) {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(isFavorite ? .red : .black) // Red for favorite, black outline otherwise
                        .padding(8)
                        .padding([.top, .trailing], 10)
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(item.name)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text("$ \(item.price/100)")
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
        .frame(width: (UIScreen.main.bounds.width - 60) / 2)
        .onTapGesture {
            Task {
                if let productId = item.productId, !productId.isEmpty {
                    do {
                        let product = try await productController.fetchProductbyId(id: productId)
                        print("Fetched product: \(product)")
                    } catch {
                        print("Error fetching product: \(error)")
                    }
                }
            }
        }
    }
        
}

#Preview {
    CardView(item: Product.sample)
}
