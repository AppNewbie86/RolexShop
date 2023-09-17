import SwiftUI

struct ProductFooterView: View {
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                NavigationLink(destination: CareerView()) {
                    Text("Career")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
                
                NavigationLink(destination: ImprintView()) {
                    Text("Imprint")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
                
                NavigationLink(destination: ContactView()) {
                    Text("Contact")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
                
                NavigationLink(destination: PrivacyPolicyView()) {
                    Text("Privacy Policy")
                        .font(.footnote)
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal, 20)
            
            Divider()
                .background(Color.white)
                .padding(.vertical, 10)
            
            Text("© 2023 Your RolexShop. All rights reserved.")
                .font(.footnote)
                .foregroundColor(.white)
        }
        .background(Color(.systemBackground))
    }
}
