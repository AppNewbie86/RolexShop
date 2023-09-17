

import SwiftUI

struct ContactView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Contact Us")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Image(systemName: "envelope.fill")
                    .font(.system(size: 80))
                    .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                    .padding()
                
                Text("Have questions or need assistance?")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                // Kontaktformular
                ContactFormView()
                
                Spacer()
                
                // Kontaktinformationen
                ContactInfoView()
                
                Spacer()
            }
        }
    }
}


struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
