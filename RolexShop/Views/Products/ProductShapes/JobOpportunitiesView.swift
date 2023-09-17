
import SwiftUI


struct JobOpportunitiesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Current Job Opportunities:")
                .font(.headline)
                .padding(.bottom, 8)
            
            Text("1. Senior Software Engineer")
                .font(.subheadline)
            
            Text("2. Marketing Manager")
                .font(.subheadline)
            
            Text("3. UX/UI Designer")
                .font(.subheadline)
        }
        .padding()
    }
}


struct JobOpportunitiesView_Previews: PreviewProvider {
    static var previews: some View {
        JobOpportunitiesView()
    }
}
