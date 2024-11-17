import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
}

struct HomeView: View {
    @State private var products: [Product] = []
    @State private var isLoading: Bool = false
    @State private var errorMessage: String?
    
    private let productController = ProductController()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(0..<products.count / 2, id: \.self) { index in
                        HStack(spacing: 25) {
                            CardView(item: products[index * 2])
                            if (index * 2 + 1) < products.count {
                                CardView(item: products[index * 2 + 1])
                            }
                        }
                    }
                    if products.count % 2 != 0 {
                        HStack {
                            CardView(item: products.last!)
                        }
                    }
                }
                .padding()
                .padding(.horizontal, 50)
                .task {
                    await fetchProducts()
                }
            }
            .navigationTitle("Home")
            
        }
    }
    
    private func fetchProducts() async {
        do {
            products = try await productController.fetchAllProducts()
            // print("Fetched Products:", products)
        } catch {
            print("Error fetching products:", error)
        }
        
    }
}

#Preview {
    HomeView()
}
