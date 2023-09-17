

import SwiftUI

struct PaymentButton: View {
    @State private var showPaymentMethodView = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            Button(action: {
                // Hier können Sie die Aktion hinzufügen, die beim Klicken auf den Button ausgeführt werden soll.
                showPaymentMethodView.toggle()
            }) {
                HStack() {
                    Text("BUY NOW")
                        .font(.custom("Montserrat", size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                }
                .padding(.horizontal, 100)
                .padding(.vertical, 8)
                .background(Color(red: 0.93, green: 0.85, blue: 0.74))
                .cornerRadius(2)
            }
            .sheet(isPresented: $showPaymentMethodView) {
                PaymentMethodView()
            }
        }
    }
}

struct PaymentButton_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButton()
    }
}
