
import SwiftUI
import Lottie // es ermöglicht, Lottie-Animationen in Ihre SwiftUI-Anwendungen zu integrieren. Lottie ist ein Open-Source-Tool, das die Verwendung von Animationen im JSON-Format ermöglicht, um interaktive und ansprechende Benutzeroberflächenanimationen zu erstellen

// Ein SwiftUI-UIViewRepresentable für die Integration von Lottie-Animationen.
struct LottieView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    let animationSpeed: CGFloat

    // Initialisierung der LottieView mit benutzerdefinierten Parametern oder Standardwerten.
    init(name: String,
         loopMode: LottieLoopMode = .playOnce,
         animationSpeed: CGFloat = 1) {
        self.name = name
        self.loopMode = loopMode
        self.animationSpeed = animationSpeed
    }
    
    // Erstellt und konfiguriert die UIView für die Lottie-Animation.
    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name: "animation_lmfg64c5")
        animationView.loopMode = loopMode
        animationView.animationSpeed = animationSpeed
        animationView.play()
        return animationView
    }
    
    // Aktualisiert die UIView (falls erforderlich), hier leer, da keine Updates vorgesehen sind.
    func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {
        
    }
}

// Ein SwiftUI-UIViewRepresentable für erweiterte Lottie-Animationen mit Abspielen und Bindings.
struct LottiePlusView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    let animationSpeed: CGFloat
    let contentMode: UIView.ContentMode
    @Binding var play: Bool
    
    let animationView: LottieAnimationView

    // Initialisierung der LottiePlusView mit benutzerdefinierten Parametern oder Standardwerten.
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
    
    // Erstellt und konfiguriert die UIView für die erweiterte Lottie-Animation.
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
