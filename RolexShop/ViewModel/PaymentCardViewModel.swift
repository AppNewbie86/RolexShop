import Foundation

// Eine ViewModel-Klasse für Zahlungskarten mit ObservableObject-Protokoll.
class PaymentCardViewModel: ObservableObject {
    @Published var paymentProvider: PaymentProvider
    
    // Initialisierung des ViewModel mit einer Zahlungsanbieter-Instanz.
    init(paymentProvider: PaymentProvider) {
        self.paymentProvider = paymentProvider
    }
    
    // Hier können Sie Funktionen hinzufügen, um weitere Logik hinzuzufügen
}
