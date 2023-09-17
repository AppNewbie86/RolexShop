

import SwiftUI

struct CareerView: View {
    var body: some View {
        NavigationView {
            VStack {
              
                
                Image(systemName: "briefcase.fill")
                    .font(.system(size: 80))
                    .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                    .padding()
                
                Text("Explore exciting career opportunities with us. We are always looking for talented individuals to join our team.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                // Stellenangebote
                JobOpportunitiesView()
                
                Spacer()
                
                // Warum bei uns arbeiten?
                WhyWorkWithUsView()
                
                Spacer()
            }
            .navigationBarTitle("Career")
        }
    }
}


struct CareerView_Previews: PreviewProvider {
    static var previews: some View {
        CareerView()
    }
}
