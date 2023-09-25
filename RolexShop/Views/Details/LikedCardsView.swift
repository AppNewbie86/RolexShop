import SwiftUI

struct LikedCardsView: View {
    @Binding var products: [Product]
    @Binding var likedCardIDs: Set<UUID>
    
    var body: some View {
        NavigationView {
            List(products.filter { likedCardIDs.contains($0.id) }) { product in
                CardView(product: Binding.constant(product), isLiked: Binding(
                    get: {
                        likedCardIDs.contains(product.id)
                    },
                    set: { newValue in
                        if newValue {
                            likedCardIDs.insert(product.id)
                        } else {
                            likedCardIDs.remove(product.id)
                        }
                    }
                ))
            }
            .navigationBarTitle("Gelikte Cards")
        }
    }
}
