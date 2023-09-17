
import SwiftUI

struct TrashButton: View {
    @State private var isButtonActive = false

    var body: some View {
        Button(action: {
            // Hier können Sie die Aktion hinzufügen, die beim Klicken auf den Button ausgeführt werden soll.
            isButtonActive.toggle()
        }) {
            HStack(spacing: 10.98667) {
                Image(systemName: "trash")
                    .resizable()
                    .frame(width: 26.368, height: 26.368)
                    .foregroundColor(Color.black)
                
                Text("Delete")
                    .font(.custom("Montserrat", size: 16))
                    .fontWeight(.medium)
                    .foregroundColor(isButtonActive ? .black : .black)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(Color(red: 0.93, green: 0.85, blue: 0.74))
            .cornerRadius(2)
            
        }
    }
}

struct TrashButton_Previews: PreviewProvider {
    static var previews: some View {
        TrashButton()
    }
}
