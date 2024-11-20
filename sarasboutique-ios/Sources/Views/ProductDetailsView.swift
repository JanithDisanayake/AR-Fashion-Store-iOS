//
//  ProductDetailsView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-13.
//

import SwiftUI

struct ProductDetailsView: View {
    var body: some View {
        VStack() {
            ScrollView(.vertical) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: .infinity, height: 500)

                    AsyncImage(url: URL(string: "https://www.saras-boutique.com/_app/immutable/assets/Prod1.B56R4Eth.jpg"))
                        .padding()
                        .cornerRadius(50)
                }
                .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 5)
                
                HStack{
                    VStack{
                        Text("Elegant Blazer")
                            .font(Font.custom("Poppins", size: 20).weight(.semibold))
                            .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity)
                            .padding(2)
                        Text("Women Style")
                            .font(Font.custom("Poppins", size: 10).weight(.medium))
                            .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                            .multilineTextAlignment(.leading)
                            .opacity(0.50)
                            .frame(width: .infinity)
                    }

                    Text("$129,99")
                        .font(Font.custom("Poppins", size: 20).weight(.semibold))
                        .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        .multilineTextAlignment(.trailing)
                        .frame(maxWidth: .infinity)

                }
                .padding()

                HStack {
//                    Text("Color")
//                        .font(Font.custom("Poppins", size: 12).weight(.medium))
//                        .foregroundColor(.black)

                    HStack(spacing: 8) { 
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 32)
                            .background(Color(red: 0.59, green: 0.26, blue: 0.02))
                            .background(Color(hex: "#592602"))
                            .cornerRadius(10)
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 32)
                            .background(Color(hex: "#0707FF"))
                            .cornerRadius(10)
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 32)
                            .background(Color(hex: "#131313"))
                            .cornerRadius(10)
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 32)
                            .background(Color(hex: "#D80000"))
                            .cornerRadius(10)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                
                VStack() {
                    Text("Description")
                        .font(Font.custom("Poppins", size: 16).weight(.bold))
                        .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        .padding()
                    Text("Made from premium fabrics that exude luxury, such as fine wool, soft cashmere, or smooth silk blends, the blazer not only radiates elegance but also ensures comfort and durability. Its thoughtful design features often include a single-breasted closure with tasteful buttons, creating a focal point that complements the blazer's overall sophistication.")
                        .font(Font.custom("Poppins", size: 10).weight(.medium))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        .opacity(0.70)
                }
                .padding(.horizontal, 50)
            }
            .padding(10)
            .frame(width: .infinity, height: .infinity)
            
            HStack(alignment: .top, spacing: 18) {
                ZStack() {
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 60, height: 55)
                        .background(Color(red: 0.89, green: 0.93, blue: 1))
                        .offset(x: 0, y: 0)
                        .cornerRadius(50)
                    Image(systemName: "cart.fill")
                }
                .frame(width: 55, height: 55)
                
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 266, height: 55)
                        .background(Color(red: 0, green: 0.23, blue: 0.82))
                        .cornerRadius(30)
                        .offset(x: 0, y: 0)
                    Text("Buy Now")
                        .font(Font.custom("Poppins", size: 16).weight(.semibold))
                        .foregroundColor(.white)
                        .offset(x: -3, y: 0.50)
                }
                .frame(width: 266, height: 55)
            }
            .padding()
        }
        .frame(width: 440, height: .infinity)
        .background(.white)
    }
}

#Preview {
    ProductDetailsView()
}
