

import SwiftUI

struct DetailHeaderView: View {
    @State private var isFavorite = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        HStack {
            Button(action: {
                // Zur ProductView navigieren
                presentationMode.wrappedValue.dismiss() // Hiermit wird zur vorherigen Ansicht zurückgekehrt
            }) {
                Image("Back")
                    .resizable()
                    .frame(width: 36, height: 36)
            }
            Spacer()
            Button(action: {
                // Herz-Button Aktion
                isFavorite.toggle() // Um den Zustand zu ändern

                // Füge hier die Logik hinzu, um das Produkt als Favorite zu markieren
            }) {
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(isFavorite ? .red : .white)
            }
        }
        .foregroundColor(.white)
    }
}


struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView()
    }
}
