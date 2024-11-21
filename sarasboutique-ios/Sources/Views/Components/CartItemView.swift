//
//  CartItemView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-21.
//

import SwiftUI

struct CartItemView: View {
    var item: CartItem
    @State var quantity: Int = 1
    
    private let cartController = CartController()


    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 412, height: 99)
                .background(.white)
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.05), radius: 10, y: 4)

            HStack(spacing: 16) {
                AsyncImage(url: URL(string: item.product.imageUrls.first ?? "")) { image in
                    image.resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 99)
                        .cornerRadius(8)
                } placeholder: {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 130, height: 99)
                        .cornerRadius(8)
                }

                VStack(alignment: .leading, spacing: 8) {
                    Text(item.product.name)
                        .font(Font.custom("Poppins", size: 14).weight(.semibold))
                        .foregroundColor(.black)

                    Text(item.product.description)
                        .font(Font.custom("Poppins", size: 8))
                        .foregroundColor(.black.opacity(0.5))

                    Text("$\(item.product.price/100)")
                        .font(Font.custom("Poppins", size: 20).weight(.semibold))
                        .foregroundColor(.black)
                }

                Spacer()

                VStack {
                    Button(action: {
                        Task {
                            if quantity != 0 {
                                quantity -= 1
                                await cartController.updateQuantity(cartItem: item, quantity: quantity)
                            }
                        }
                    }) {
                        Text("-")
                            .frame(width: 20, height: 20)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(4)
                    }

                    Text("\(quantity)")
                        .font(.body)

                    Button(action: {
                        Task {
                            quantity += 1
                            await cartController.updateQuantity(cartItem: item, quantity: quantity)
                        }
                    }) {
                        Text("+")
                            .frame(width: 20, height: 20)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(4)
                    }
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, minHeight: 99, maxHeight: 99)
        .task {
            quantity = item.quantity;
        }
    }
}


#Preview {
    CartItemView(item: CartItem.sample)
}
