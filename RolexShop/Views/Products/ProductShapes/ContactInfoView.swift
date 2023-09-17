
import SwiftUI

struct ContactInfoView: View {
    var body: some View {
        VStack {
            Text("Contact Information:")
                .font(.headline)
                .padding(.bottom, 8)
            
            Text("Email: contact@example.com")
                .font(.subheadline)
            
            Text("Phone: +1 (123) 456-7890")
                .font(.subheadline)
            
            Text("Address: 1234 Main St, City, Country")
                .font(.subheadline)
        }
        .padding(.bottom, 35)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView()
    }
}
