//
//  CartView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-04.
//

import SwiftUI

struct CartItem: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
    let price: Double
    let color: Color
    let count: Int
}

struct CartView: View {
    let items: [CartItem] = [
        CartItem(name: "Hot Pants", description: "Women Style", imageName: "", price: 129.99, color: Color(red: 0.07, green: 0, blue: 0.84), count: 1),
        CartItem(name: "CasualJeans", description: "Women Style", imageName: "", price: 169.99, color: .blue, count: 1),
        CartItem(name: "Elegant Blazer", description: "Women Style", imageName: "", price: 189.99, color: .blue, count: 1)
    ]
    
    var body: some View {
        NavigationView {
                        VStack {
                            ScrollView {
                                VStack(spacing: 20) {
                                    ForEach(0..<20) { index in
                                        Text("Item \(index)")
                                            .frame(maxWidth: .infinity)
                                            .padding()
                                            .background(Color.blue.opacity(0.2))
                                            .cornerRadius(10)
                                    }
                                }
                                .padding()
                            }
                            
                            // Static Button below the ScrollView
                            Button(action: {
                                print("Button tapped")
                            }) {
                                Text("Static Button")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .padding([.horizontal, .bottom])
                            }
                            .shadow(radius: 5)
                        }
                        .navigationTitle("Cart")
               }
//        ZStack() {
//            VStack() {
//              HStack(alignment: .top, spacing: 103) {
//                Text("Your Cart")
//                  .font(Font.custom("Poppins", size: 30).weight(.semibold))
//                  .foregroundColor(.white)
//              }
//              .offset(x: 5.50, y: -0.50)
//            }
//            .frame(width: 440, height: 74)
//            .background(Color(red: 0, green: 0.07, blue: 0.24))
//            .offset(x: 0, y: -400)
//              
//        }
//        .background(.white)
    }
}

#Preview {
    CartView()
}
