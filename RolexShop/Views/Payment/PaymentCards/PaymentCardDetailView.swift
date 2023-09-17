
import SwiftUI


struct PaymentCardDetailView: View {
    @ObservedObject var viewModel: PaymentCardViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.paymentProvider.name)
                .font(.title)
            Text(viewModel.paymentProvider.description)
                .font(.body)
            // Weitere Daten des Zahlungsanbieters anzeigen
        }
    }
}


struct PaymentCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentCardDetailView(viewModel: PaymentCardViewModel(paymentProvider: PaymentProvider(name: "CREDITCARD", description: "International Banking Worldwide easy to use it", image: "mastercard")))
    }
}
