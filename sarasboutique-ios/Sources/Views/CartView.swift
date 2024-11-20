//
//  CartView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-04.
//

import SwiftUI

struct CartItem2: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
    let price: Double
    let color: Color
    let count: Int
}

struct CartView: View {
    @State private var items: [CartItem] = []
    private let cartController = CartController()

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(0..<items.count, id: \.self) { index in
                        CartItemView(item: items[index])
                    }
                }

                Button(action: {
                    print("Checkout tapped")
                }) {
                    Text("Checkout")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Cart")
            .task {
                await fetchItems()
            }
        }
    }

    private func fetchItems() async {
        let userId = "kt6kzM9eGfkCeq2TZhVq" 
        items = await cartController.getAllItemsFromCart(userId: userId)
        //  print("Fetched items: \(items)")
    }
}


#Preview {
    CartView()
}
