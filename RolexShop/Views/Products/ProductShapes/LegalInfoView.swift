

import SwiftUI


struct LegalInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Legal Information:")
                .font(.headline)
                .padding(.bottom, 8)
            
            Text("Company Name: Your Company Name")
                .font(.subheadline)
            
            Text("Registered Office: 1234 Main St, City, Country")
                .font(.subheadline)
            
            Text("Business Registration Number: XXXXXXX")
                .font(.subheadline)
            
            Text("VAT Identification Number: XXXXXXXX")
                .font(.subheadline)
            
            Text("Managing Director: John Doe")
                .font(.subheadline)
            
            Text("Contact Email: info@example.com")
                .font(.subheadline)
        }
        .padding()
    }
}
struct LegalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        LegalInfoView()
    }
}
