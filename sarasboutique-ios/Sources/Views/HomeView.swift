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
    @State private var searchText = ""
    
    private let productController = ProductController()
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                
                ScrollView {
                    VStack(spacing: 10) {
                        // Filter products based on search text
                        let filteredProducts = products.filter { product in
                            searchText.isEmpty || product.name.lowercased().contains(searchText.lowercased())
                        }
                        
                        // Display the filtered products
                        ForEach(0..<filteredProducts.count / 2, id: \.self) { index in
                            HStack(spacing: 25) {
                                CardView(product: filteredProducts[index * 2])
                                if (index * 2 + 1) < filteredProducts.count {
                                    CardView(product: filteredProducts[index * 2 + 1])
                                }
                            }
                        }
                        
                        if filteredProducts.count % 2 != 0 {
                            HStack {
                                CardView(product: filteredProducts.last!)
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

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        TextField("Search products...", text: $text)
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .padding(.horizontal)
            .foregroundColor(.black)
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .overlay(
                HStack {
                    Spacer()
                    if !text.isEmpty {
                        Button(action: {
                            text = "" // Clear the search text
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding(.trailing)
            )
    }
}

#Preview {
    HomeView()
}
