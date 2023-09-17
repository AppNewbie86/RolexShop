
import SwiftUI

struct PrivacyPolicyView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Privacy Policy")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    
                    Text("Last Updated: September 17, 2023")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("1. Introduction")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Welcome to Your Company (the \"Company,\" \"we,\" \"us,\" or \"our\"). At Your Company, we value and respect your privacy, and we are committed to protecting your personal information. This Privacy Policy is designed to help you understand how we collect, use, disclose, and safeguard your personal information. By accessing or using our services, you consent to the practices described in this Privacy Policy.")
                        .font(.body)
                    
                    Text("2. Information We Collect")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("2.1. Information You Provide")
                        .font(.headline)
                    
                    Text("We may collect information that you provide directly to us, such as when you create an account, fill out a form, make a purchase, or contact us for customer support. This information may include your name, email address, postal address, phone number, and other identifiers.")
                        .font(.body)
                    
                    Text("2.2. Information We Collect Automatically")
                        .font(.headline)
                    
                    Text("When you access or use our services, we may automatically collect information about your usage and device, including your IP address, browser type, operating system, and interactions with our services.")
                        .font(.body)
                    
                    Text("3. How We Use Your Information")
                        .font(.title)
                        .fontWeight(.bold)
                    
                   
                    
                    // Weitere Abschnitte hinzufügen, falls erforderlich
                    
                }
                .padding()
            }
          
        }
    }
}

struct PrivacyPolicyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicyView()
    }
}
