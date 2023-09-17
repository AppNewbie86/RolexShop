import SwiftUI

// Eine SwiftUI-Ansicht für die Favoritenansicht.
struct FavoritesView: View {
    @Binding var products: [Product] // Ein Binding zu einer Liste von Produkten.

    var body: some View {
        NavigationView {
            List(products.filter { $0.isLiked }) { product in
                HStack(spacing: 8) {
                    Image(product.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .cornerRadius(10) // Rundet die Ecken des Bildes ab.
                    
                    VStack(alignment: .leading) {
                        Text(product.title)
                            .font(.headline) // Setzt die Schriftgröße auf "headline".
                        
                        Text(product.description)
                            .font(Font.custom("Readex Pro", size: 12)) // Verwendet eine benutzerdefinierte Schriftart und Größe.
                    }
                    
                    Spacer() // Fügt flexiblen Raum ein.
                    
                    Button(action: {
                        removeFavorite(product) // Ruft die Funktion zum Entfernen aus den Favoriten auf.
                    }) {
                        Image(systemName: "trash")
                            .foregroundColor(.red) // Setzt die Textfarbe auf Rot.
                            .font(.subheadline) // Setzt die Schriftgröße auf "subheadline".
                    }
                    .padding(.leading, 16) // Fügt einen linken Abstand hinzu.
                }
            }
            .navigationBarTitle("FAVORITES") // Setzt den Titel der Navigationsleiste.
        }
    }
    
    // Eine private Funktion zum Entfernen eines Produkts aus den Favoriten.
    private func removeFavorite(_ product: Product) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            products[index].isLiked = false // Setzt das Produkt als nicht mehr gemocht.
        }
    }
}
