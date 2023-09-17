
import SwiftUI

struct PaymentCard3View: View {
    @ObservedObject var viewModel: PaymentCardViewModel

    init(viewModel: PaymentCardViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        ZStack {
            HStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 116, height: 116)
                    .background(
                        Image("bitcoin")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 116, height: 116)
                            .clipped()
                    )
                    .overlay(
                        Rectangle()
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.93, green: 0.85, blue: 0.74), lineWidth: 1)
                    )
                
                VStack(alignment: .leading) {
                    Text("KRYPTO")
                        .font(
                            Font.custom("Montserrat", size: 18.67733)
                                .weight(.medium)
                        )
                        .foregroundColor(.white)
                        .frame(width: 148, height: 23, alignment: .topLeading)
                    
                    Text("Decentrales Paymentsystem")
                        .font(
                            Font.custom("Montserrat", size: 12)
                                .weight(.medium)
                        )
                        .foregroundColor(.white)
                        .frame(width: 176, height: 24, alignment: .topLeading)
                }
            }
        }
        .frame(width: 352, height: 145) // Höhe für zusätzlichen Text anpassen
        .background(Color(red: 0.34, green: 0.34, blue: 0.34))
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
        .overlay(
            RoundedRectangle(cornerRadius: 20) // Radius anpassen
                .inset(by: 0.5)
                .stroke(Color(red: 0.93, green: 0.85, blue: 0.74), lineWidth: 1)
        )
    }
}
