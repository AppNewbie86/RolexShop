

import SwiftUI

struct ImprintView: View {
    var body: some View {
        NavigationView {
            VStack {
               
                
                Image(systemName: "info.circle.fill")
                    .font(.system(size: 80))
                    .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                    .padding()
                
                Text("Information about your company imprint goes here. This is where you can provide details about your company's legal information, contact information, and more.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                // Rechtliche Informationen
                LegalInfoView()
                
                Spacer()
                
                // Kontaktinformationen
                ContactInfoView()
                
                Spacer()
            }
        }
    }
}


struct ImprintView_Previews: PreviewProvider {
    static var previews: some View {
        ImprintView()
    }
}
