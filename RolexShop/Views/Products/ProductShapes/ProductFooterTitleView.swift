import SwiftUI

struct ProductFooterTitleView: View {
    @State private var showingFavorites: Bool = false
    @Binding var products: [Product] // Füge die Bindung hinzu
    
    var body: some View {
        NavigationLink(destination: FavoritesView(products: $products), isActive: $showingFavorites) { // Aktualisiere die NavigationLink-Zielansicht
            EmptyView()
        }
        .opacity(0)
        
        HStack {

            Text("New Watches 2022")
                .font(Font.custom("Readex Pro", size: 20.784))
                .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))

            Spacer()
            
            Button(action: {
                // Aktion für den Favoriten-Button
                showingFavorites.toggle()
            }) {
                Image(systemName: "heart")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
            }
        }
        .padding(.horizontal)
        
        // Trennlinie mit Verlauf erstellen
        LinearGradient(
            gradient: Gradient(stops: [
                Gradient.Stop(color: Color(red: 0.93, green: 0.85, blue: 0.74), location: 0.00),
                Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00)
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .frame(height: 0.46187)
        
    }
}

struct ProductFooterTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ProductFooterTitleView(products: .constant([])) // Übergebe eine leere Produktliste für die Vorschau
    }
}
