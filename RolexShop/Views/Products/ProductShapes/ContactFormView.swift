
import SwiftUI

struct ContactFormView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var message = ""
    
    var body: some View {
        VStack {
            Text("Send us a message:")
                .font(.headline)
                .padding(.bottom, 8)
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextEditor(text: $message)
                .frame(height: 100)
                .cornerRadius(10)
                .padding(.horizontal)
            
            Button(action: {
                // Hier kannst du die Aktion zum Senden der Nachricht implementieren
                // Zum Beispiel: Eine E-Mail oder API-Anfrage senden
                // Du kannst die Implementierung je nach Bedarf anpassen
            }) {
                Text("Send")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.93, green: 0.85, blue: 0.74))
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}


struct ContactFormView_Previews: PreviewProvider {
    static var previews: some View {
        ContactFormView()
    }
}
