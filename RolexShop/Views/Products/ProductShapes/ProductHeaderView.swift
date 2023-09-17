

import SwiftUI
struct ProductHeaderView: View {
    var body: some View {
        HStack(spacing: 20) {
            HeaderButton(imageName: "Menu")
            Spacer()
            Image("Decorative")
            Spacer()
            HeaderButton(imageName: "Search")
        }
        .padding(20)
        .background(Color.black)
    }
}


struct HeaderButton: View {
    var imageName: String
    
    var body: some View {
        Button(action: {
            // Aktion für den Button ausführen
            // Zum Beispiel: Navigation zu einem entsprechenden Bildschirm
        }) {
            Image(imageName)
                .resizable()
                .frame(width: 32, height: 32)
        }
    }
}
