
import SwiftUI


struct WhyWorkWithUsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Why Work With Us:")
                .font(.headline)
                .padding(.bottom, 8)
            
            Text("1. Competitive Salary")
                .font(.subheadline)
            
            Text("2. Opportunities for Growth")
                .font(.subheadline)
            
            Text("3. Innovative Projects")
                .font(.subheadline)
            
            Text("4. Collaborative Team")
                .font(.subheadline)
        }
        .padding()
    }
}



struct WhyWorkWithUsView_Previews: PreviewProvider {
    static var previews: some View {
        WhyWorkWithUsView()
    }
}
