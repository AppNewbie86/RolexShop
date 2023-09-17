

import SwiftUI


struct PaymentBodyDetails2View: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15.38133) {
            Text("Total")
              .font(
                Font.custom("Montserrat", size: 18.67733)
                  .weight(.medium)
              )
              .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
            
            HStack {
                Text("Sub-total")
                  .font(Font.custom("Montserrat", size: 15.38133))
                  .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))

                Spacer()

                Text("$65.00")
                  .font(Font.custom("Montserrat", size: 15.38133))
                  .foregroundColor(Color.white)
            }
            
            Text("Delivery")
              .font(
                Font.custom("Montserrat", size: 18.67733)
                  .weight(.medium)
              )
              .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))

            CheckboxWithText()
            
           
        }
        .padding(.horizontal, 8.78933)
        .padding(.vertical, 7.69067)
        .frame(width: 351.57333, alignment: .topLeading)
        .background(Color(red: 0.34, green: 0.34, blue: 0.34))
        .cornerRadius(8)
    }
    
    
}


struct PaymentBodyDetails2View_Previews: PreviewProvider {
    static var previews: some View {
        PaymentBodyDetails2View()
    }
}
