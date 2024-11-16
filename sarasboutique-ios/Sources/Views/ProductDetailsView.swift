//
//  ProductDetailsView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-13.
//

import SwiftUI

struct ProductDetailsView: View {
    var body: some View {
        ZStack() {
            
            ZStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 440, height: 600)
                    .background(Color(red: 0.77, green: 0.77, blue: 0.77))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 40, y: 4
                    )
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 440, height: 600)
                    .background(
                        AsyncImage(url: URL(string: "https://via.placeholder.com/440x567"))
                    )
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
            }
            .frame(width: 440, height: 567)
            .offset(x: 0, y: -200)
            
            VStack {
                VStack() {
                    
                    VStack {
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
                        
                    }
                    
                    ZStack() {
                        Text("Color")
                            .font(Font.custom("Poppins", size: 12).weight(.medium))
                            .foregroundColor(.black)
                            .offset(x: -180.53, y: 0.56)
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 33.04, height: 32.52)
                            .background(Color(red: 0.59, green: 0.26, blue: 0.02))
                            .offset(x: 183.48, y: 0)
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 33.04, height: 32.52)
                            .background(Color(red: 0.07, green: 0, blue: 0.84))
                            .offset(x: 138.64, y: 0)
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 33.04, height: 32.52)
                            .background(Color(red: 0.13, green: 0.13, blue: 0.13))
                            .offset(x: 93.81, y: 0)
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 38.94, height: 37)
                            .background(Color(red: 0.84, green: 0, blue: 0))
                            .offset(x: 46.02, y: 0)
                    }
                    .frame(width: 400, height: 37)
                    .offset(y:10)
                    
                    VStack() {
                        Text("Description")
                            .font(Font.custom("Poppins", size: 12).weight(.medium))
                            .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                            .padding()
                        Text("Made from premium fabrics that exude luxury, such as fine wool, soft cashmere, or smooth silk blends, the blazer not only radiates elegance but also ensures comfort and durability. Its thoughtful design features often include a single-breasted closure with tasteful buttons, creating a focal point that complements the blazer's overall sophistication.")
                            .font(Font.custom("Poppins", size: 10).weight(.medium))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                            .opacity(0.70)
                    }
                    .frame(height: 103)
                }
                .frame(width: 400, height: 45)
                .offset(x: 0, y: 220)
                
                
                
            }
            .padding(100)
            
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
            .offset(x: -0.50, y: 403.50)
        }
        .frame(width: 440, height: 956)
        .background(.white)
    }
}

#Preview {
    ProductDetailsView()
}
