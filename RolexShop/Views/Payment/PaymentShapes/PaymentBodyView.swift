

import SwiftUI


struct PaymentBodyView: View {
    var body: some View {
        HStack {
            Image("Watch1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 203)
                .clipped()
            
            VStack(alignment: .leading, spacing: 8) {
                Text("GMT-MASTER II")
                    .font(.custom("Cinzel", size: 22))
                    .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                
                HStack {
                    Text("PRICE:")
                        .font(.custom("Montserrat", size: 18))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                    
                    Text("20.234 €")
                        .font(.custom("Montserrat", size: 18))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                }
                
                HStack {
                    Text("Color: Silver")
                        .font(.custom("Montserrat", size: 14))
                        .foregroundColor(.white)
                    
                    Text("QTY: 1")
                        .font(.custom("Montserrat", size: 14))
                        .foregroundColor(.white)
                }
            }
        }
        .padding(16)
        .frame(width: 351.57333, alignment: .topLeading)

        .background(Color(red: 0.34, green: 0.34, blue: 0.34))
        .cornerRadius(8)
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
    }
}


struct PaymentBodyView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentBodyView()
    }
}
