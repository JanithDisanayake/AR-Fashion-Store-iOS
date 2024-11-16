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
    
    let items: [Item] = [
        Item(name: "Item 1", description: "Description for item 1", imageName: "photo1"),
        Item(name: "Item 2", description: "Description for item 2", imageName: "photo2"),
        Item(name: "Item 3", description: "Description for item 3", imageName: "photo3"),
        Item(name: "Item 4", description: "Description for item 4", imageName: "photo4"),
        Item(name: "Item 5", description: "Description for item 5", imageName: "photo5"),
        Item(name: "Item 6", description: "Description for item 6", imageName: "photo6")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(0..<items.count / 2, id: \.self) { index in
                        HStack(spacing: 25) {
                            CardView(item: items[index * 2])
                            if (index * 2 + 1) < items.count {
                                CardView(item: items[index * 2 + 1])
                            }
                        }
                    }
                    
                    if items.count % 2 != 0 {
                        HStack {
                            CardView(item: items.last!)
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
        print("Fetching")
        
        do {
            products = try await productController.fetchAllProducts()
            print("Fetched Products:", products)
        } catch {
            print("Error fetching products:", error)
        }
        
    }
}

struct CardView: View {
    let item: Item
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(item.name)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(item.description)
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
        .frame(width: (UIScreen.main.bounds.width - 60) / 2) // Make each card take half the screen width minus padding
    }
}

#Preview {
    HomeView()
}
