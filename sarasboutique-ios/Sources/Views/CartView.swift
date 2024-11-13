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
        CartItem(name: "Elegant Blazer", description: "Women Style", imageName: "", price: 189.99, color: .blue, count: 1),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(items) { item in
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 412, height: 99)
                                .background(.white)
                                .cornerRadius(8)
                                .offset(x: 0, y: 0)
                                .shadow(
                                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                                )
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 412, height: 99)
                                .background(.white)
                                .cornerRadius(8)
                                .offset(x: 0, y: 0)
                                .shadow(
                                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                                )
                            ZStack() {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 130.04, height: 99)
                                    .background(.white)
                                    .cornerRadius(8)
                                    .offset(x: 0, y: 0)
                                    .shadow(
                                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                                    )
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 130.04, height: 99)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/130x99"))
                                    )
                                    .cornerRadius(8)
                                    .offset(x: 0, y: 0)
                            }
                            .frame(width: 130.04, height: 99)
                            .offset(x: -140.98, y: 0)
                            VStack(alignment: .leading, spacing: 10) {
                                Text("\(item.name)")
                                    .font(Font.custom("Poppins", size: 14).weight(.semibold))
                                    .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                                
                                Text("\(item.description)")
                                    .font(Font.custom("Poppins", size: 8).weight(.medium))
                                    .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                                    .opacity(0.50)
                                
                                Text("$\(item.price, specifier: "%.2f")")
                                    .font(Font.custom("Poppins", size: 20).weight(.semibold))
                                    .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                            }
                            ZStack() {
                                Text("-")
                                    .font(Font.custom("Roboto", size: 12).weight(.medium))
                                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                                    .offset(x: -25.24, y: -0)
                                Text("1")
                                    .font(Font.custom("Roboto", size: 12).weight(.bold))
                                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                                    .offset(x: 0, y: -0.71)
                                Text("+")
                                    .font(Font.custom("Roboto", size: 12).weight(.medium))
                                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                                    .offset(x: 25.24, y: -0)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 83.86, height: 22)
                                    .cornerRadius(20)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .inset(by: 0.50)
                                            .stroke(
                                                Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 0.50
                                            )
                                    )
                                    .offset(x: 0, y: 0)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 7.70, height: 0)
                                    .overlay(
                                        Rectangle()
                                            .stroke(
                                                Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 0.75
                                            )
                                    )
                                    .offset(x: -25.24, y: 1.06)
                            }
                            .frame(width: 83.86, height: 22)
                            .offset(x: 140, y: 25)
                            
                            // color squair
                            ZStack() {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 20, height: 20)
                                    .background(Color(red: 0.07, green: 0, blue: 0.84))
                                    .cornerRadius(4)
                                    .offset(x: 0, y: 0)
                            }
                            .frame(width: 24.31, height: 20)
                            .offset(x: 167.11, y: -23.50)
                        }
                        .frame(maxWidth: .infinity, minHeight: 99, maxHeight: 99)
                    }
                }
                
                // Static Button
                Button(action: {
                    print("Button tapped")
                }) {
                    Text("Checkout")
                        .font(Font.custom("Poppins", size: 20).weight(.bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(30)
                }
                .frame(maxWidth: .infinity, maxHeight: 100)
                .padding([.horizontal, .bottom])
                .shadow(radius: 5)
                
            }
            .navigationTitle("Cart")
            .padding(10)
        }
    }
}

#Preview {
    CartView()
}
