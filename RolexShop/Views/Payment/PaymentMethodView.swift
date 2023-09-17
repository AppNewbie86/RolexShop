import SwiftUI

// Definiere Daten für Zahlungsanbieter
let paymentProviderData1 = PaymentProvider(name: "MasterCard", description: "International Creditcard", image: "mastercard")
let paymentProviderData2 = PaymentProvider(name: "Visa", description: "Another Creditcard", image: "visa")
let paymentProviderData3 = PaymentProvider(name: "Krypto", description: "A Internationel decentrale Money", image: "bitcoin")

struct PaymentMethodView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        Spacer()
                        Image("Rolexkrone")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70.11235809326172, height: 60)
                            .clipped()
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        
                        Text("METHODS")
                            .font(Font.custom("Cinzel", size: 30.44625))
                            .kerning(0.30446)
                            .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                        
                        NavigationLink(destination: PaymentCardDetailView(viewModel: PaymentCardViewModel(paymentProvider: paymentProviderData1))) {
                            PaymentCard1View(viewModel: PaymentCardViewModel(paymentProvider: paymentProviderData1))
                        }
                        
                        NavigationLink(destination: PaymentCardDetailView(viewModel: PaymentCardViewModel(paymentProvider: paymentProviderData2))) {
                            PaymentCard2View(viewModel: PaymentCardViewModel(paymentProvider: paymentProviderData2))
                        }
                        
                        NavigationLink(destination: PaymentCardDetailView(viewModel: PaymentCardViewModel(paymentProvider: paymentProviderData3))) {
                            PaymentCard3View(viewModel: PaymentCardViewModel(paymentProvider: paymentProviderData3))
                        }
                        
                        // Wiederhole dies für andere Zahlungsanbieter-Daten
                        
                        BonitätView()
                    }
                    .frame(width: 412, height: 892.11731)
                    .background(Color(red: 0.03, green: 0.03, blue: 0.04))
                    .cornerRadius(13.184)
                    .shadow(color: .black, radius: 70.864, x: 35.15733, y: 54.93333)
                    
                }
            }
        }
    }
}

struct PaymentMethodView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentMethodView()
    }
}

