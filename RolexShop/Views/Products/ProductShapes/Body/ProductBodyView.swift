import SwiftUI

struct ProductBodyView: View {
    @State private var products: [Product] = [
        Product(imageName: "Watch1", title: "Master II", description: "Rostless Steel", description2: "24932€", isLiked: false),
        Product(imageName: "Watch2", title: "Perpetua II", description: "Glamour Clock", description2: "35678", isLiked: false),
        Product(imageName: "Watch3", title: "Submarine II", description: "Marine Look", description2: "32456", isLiked: false),
    ]
    
    @State private var likedCardIDs: Set<UUID> = []
    @State private var showLikedCardsView = false
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(products.indices, id: \.self) { index in
                            CardView(product: $products[index], isLiked: Binding(
                                get: {
                                    likedCardIDs.contains(products[index].id)
                                },
                                set: { newValue in
                                    if newValue {
                                        likedCardIDs.insert(products[index].id)
                                    } else {
                                        likedCardIDs.remove(products[index].id)
                                    }
                                }
                            ))
                            .frame(width: 200, height: 350) // Höhe erhöht
                            .background(Color(red: 0.03, green: 0.03, blue: 0.04))
                            .cornerRadius(12)
                            .shadow(color: .black, radius: 62.5, x: 32, y: 50)
                            
                            
                        }
                    }
                    .padding(.horizontal, 20) // Horizontaler Abstand verringert
                }
                HStack {
                    Text("New Watches 2022")
                        .font(Font.custom("Readex Pro", size: 20.784))
                        .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                        .padding(.leading, 40)
                    
                    Spacer()
                    
                    Button(action: {
                        showLikedCardsView = true
                    }) {
                        Image(systemName: "heart")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 20)
                    
                }
                .sheet(isPresented: $showLikedCardsView) {
                    LikedCardsView(products: $products, likedCardIDs: $likedCardIDs)
                }
            }
        }
    }
}
