import SwiftUI

// Eine SwiftUI-Ansicht für den Hauptbildschirminhalt.
struct ContentView: View {
    @State private var splashViewAktiv = true // Ein Zustand, um den Zustand des Splash-Bildschirms zu verfolgen.

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea() // Füllt den gesamten Bildschirm mit schwarzer Farbe aus.
                VStack {
                    if splashViewAktiv {
                        SplashView(name: "animation_lmfg64c5") // Zeigt den Splash-Bildschirm mit Animation an.
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                                    withAnimation {
                                        self.splashViewAktiv = false // Nach einer Verzögerung von 4 Sekunden wird der Splash-Bildschirm deaktiviert.
                                    }
                                }
                            }
                    } else {
                        StartView() // Zeigt den Hauptinhalt nach dem Splash-Bildschirm an.
                            .padding()
                    }
                }
            }
        }
    }
}

// Eine SwiftUI-Vorschau für den ContentView.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
