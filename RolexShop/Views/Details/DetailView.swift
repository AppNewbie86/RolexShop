import SwiftUI

// Eine SwiftUI-Ansicht für die Detailansicht.
struct DetailView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea() // Ignoriert den sicheren Bereich und füllt den gesamten Bildschirm mit schwarzer Farbe aus.
            
            VStack {
                Spacer() // Fügt einen flexiblen Raum oberhalb der Detailansicht hinzu.
                DetailHeaderView() // Zeigt den Header der Detailansicht an.
                    .padding(.horizontal, 20) // Fügt horizontalen Abstand hinzu.
                    .padding(.vertical, 20) // Fügt vertikalen Abstand hinzu.
                DetailBodyView() // Zeigt den Hauptinhalt der Detailansicht an.
            }
            
            ZStack {
                VStack {
                    Spacer() // Fügt einen flexiblen Raum unterhalb des Hauptinhalts hinzu.

                    DetailFooterView() // Zeigt den Footer der Detailansicht an.
                        .padding(.bottom, 40) // Fügt Abstand am unteren Rand hinzu.
                }
            }
        }
    }
}

// Eine SwiftUI-Vorschau für die Detailansicht.
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
