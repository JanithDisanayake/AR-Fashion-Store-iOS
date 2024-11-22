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

    var total: Double {
        let totalInCents = items.map { item in
            item.product.price * item.quantity
        }.reduce(0, +)
        
        return Double(totalInCents) / 100 // Convert to dollars
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(0..<items.count, id: \.self) { index in
                        CartItemView(item: items[index])
                    }
                }

                HStack {
                    Text("Total")
                        .frame(width: .infinity, alignment: .leading)
                        .font(.system(size: 24, weight: .semibold)) 
                    Spacer()
                    Text("$\(total, specifier: "%.2f")")
                        .font(.system(size: 24, weight: .bold))
                }
                .padding()
                
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
        let userId = UserDataManager.shared.getCurrentUserID()
        items = await cartController.getAllItemsFromCart(userId: userId)
        //  print("Fetched items: \(items)")
    }
}


#Preview {
    CartView()
}
