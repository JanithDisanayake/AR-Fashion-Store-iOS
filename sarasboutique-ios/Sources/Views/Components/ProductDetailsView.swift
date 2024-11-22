//
//  ProductDetailsView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-13.
//

import SwiftUI

struct ProductDetailsView: View {
    let product: Product
    @State var isPresented: Bool = false
    
    let cartController = CartController()
    
    
    var body: some View {
        VStack() {
            ScrollView(.vertical) {
                ZStack(alignment: .bottomTrailing) { // Align contents within the ZStack
                    // Placeholder rectangle with the same size as the image
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: UIScreen.main.bounds.width - 60, height: 500)
                        .cornerRadius(50)

                    AsyncImage(url: URL(string: product.imageUrls[0])) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width - 60, height: 500)
                            .cornerRadius(50)
                    } placeholder: {
                        ProgressView()
                            .frame(width: UIScreen.main.bounds.width - 60, height: 500)
                    }

                    VStack {
                        Button {
                            isPresented.toggle()
                        } label: {
                            Image(systemName: "arkit")
                                .padding(10)
                                .background(Color(red: 0, green: 0.23, blue: 0.82))
                                .foregroundStyle(.white)
                        }
                        .padding(10)
                        .background(.clear)
                    }
                    .padding(20)
                    .background(.clear)
                    .fullScreenCover(isPresented: $isPresented) {
                        SheetView(modelName: product.objectUrl, isPresented: $isPresented)
                    }
                }
                .padding()

                HStack{
                    VStack{
                        Text("\(product.name)")
                            .font(Font.custom("Poppins", size: 20).weight(.semibold))
                            .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity)
                            .padding(2)
                        Text("\(product.category)")
                            .font(Font.custom("Poppins", size: 10).weight(.medium))
                            .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                            .multilineTextAlignment(.leading)
                            .opacity(0.50)
                            .frame(width: .infinity)
                    }

                    Text("$ \(product.price/100)")
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
                        ForEach(product.color, id: \.self) { color in
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 32, height: 32)
                                .background(Color(red: 0.59, green: 0.26, blue: 0.02))
                                .background(Color(hex: color))
                                .cornerRadius(10)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                
                VStack() {
                    Text("Description")
                        .font(Font.custom("Poppins", size: 16).weight(.bold))
                        .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        .padding()
                    Text("\(product.description)")
                        .font(Font.custom("Poppins", size: 10).weight(.medium))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        .opacity(0.70)
                }
                .frame(width: UIScreen.main.bounds.width - 60)
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
                    Image(systemName: "basket.fill")
                }
                .frame(width: 55, height: 55)
                .onTapGesture {
                    Task{
                        let userId = UserDataManager.shared.getCurrentUserID()
                        await cartController.addToCart(userId: userId, product: product)
                    }
                }
                
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
    ProductDetailsView(product: Product.sample)
}
