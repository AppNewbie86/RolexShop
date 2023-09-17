import SwiftUI
import Lottie

// Eine SwiftUI-UIViewRepresentable-Struktur für die Darstellung einer Lottie-Animation.
struct SplashView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    let animationSpeed: CGFloat
    let contentMode: UIView.ContentMode
    @Binding var play: Bool
    
    let animationView: LottieAnimationView

    // Initialisierung der SplashView mit benutzerdefinierten Parametern oder Standardwerten.
    init(name: String,
         loopMode: LottieLoopMode = .playOnce,
         animationSpeed: CGFloat = 1,
         contentMode: UIView.ContentMode = .scaleAspectFit,
         play: Binding<Bool> = .constant(true)) {
        self.name = name
        self.animationView = LottieAnimationView(name: "animation_lmfg64c5")
        self.loopMode = loopMode
        self.animationSpeed = animationSpeed
        self.contentMode = contentMode
        self._play = play
    }
    
    // Erstellt und konfiguriert die UIView für die Lottie-Animation.
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        view.addSubview(animationView)
        animationView.contentMode = contentMode
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        animationView.loopMode = loopMode
        animationView.animationSpeed = animationSpeed
        
        return view
    }
    
    // Aktualisiert die UIView (falls erforderlich) und spielt die Animation abhängig von 'play'.
    func updateUIView(_ uiView: UIView, context: Context) {
        if play {
            animationView.play { _ in
                play = false
            }
        }
    }
}
