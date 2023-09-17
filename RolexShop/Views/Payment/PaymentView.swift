

import SwiftUI

struct PaymentView: View {
    @State private var isPaymentMethodView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer(minLength: 70)
                    HStack { // Begin Image and Title
                        Spacer()
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 60, height: 60)
                            .background(
                                Image("krone")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 50)
                                    .clipped()
                            )
                        Spacer()
                        
                        Text("PAYMENTS")
                            .font(Font.custom("Cinzel", size: 27.712))
                            .kerning(0.27712)
                            .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                        
                        Spacer()
                        
                    } // End Image and Title
                    
                    // Trennlinie mit Verlauf erstellen
                    LinearGradient(
                        gradient: Gradient(stops: [
                            Gradient.Stop(color: Color(red: 0.93, green: 0.85, blue: 0.74), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .frame(height: 0.46187)
                    PaymentBodyView()
                    PaymentBodyDetailsView()
                    PaymentBodyDetails2View()
                    VStack {
                        HStack {
                            Spacer()
                            
                            Text("Trash your Order -->")
                                .kerning(0.30446)
                                .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))                            .padding()
                            
                            Spacer()
                            TrashButton()
                            Spacer()
                            
                        }
                        PaymentButton()
                            .padding(.bottom, 50)
                    }
                }
            }
            .frame(width: 412, height: 892.11731)
            .background(Color(red: 0.03, green: 0.03, blue: 0.04))
            .cornerRadius(13.184)
            .shadow(color: .black, radius: 70.864, x: 35.15733, y: 54.93333)
            .overlay(
                RoundedRectangle(cornerRadius: 13.184)
                    .inset(by: 0.27)
                    .stroke(Color(red: 0.87, green: 0.76, blue: 0.45), lineWidth: 0.55)
            )
        }
    }
}
struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}

