
import SwiftUI

struct PaymentBodyDetailsView: View {
    var body: some View {
        VStack {
            HStack() {
                Text("Subtotal:")
                  .font(
                    Font.custom("Montserrat", size: 18.67733)
                      .weight(.medium)
                  )
                  .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))

                Spacer()
                
                Text("20.234 €")
                    .font(
                      Font.custom("Montserrat", size: 18.67733)
                        .weight(.medium)
                    )
                    .foregroundColor(.white)

            }
            .padding(.horizontal, 6.592)
            .padding(.vertical, 5.49333)
            .frame(width: 351.57333, alignment: .topLeading)
            .background(Color(red: 0.34, green: 0.34, blue: 0.34))
            .cornerRadius(8)
        }
    }
}

struct PaymentBodyDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentBodyDetailsView()
    }
}
