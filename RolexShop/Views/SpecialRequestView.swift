import SwiftUI

// Die SpecialRequestView ist eine SwiftUI-Ansicht zur Eingabe einer speziellen Anfrage.
struct SpecialRequestView: View {
    @Binding var isSheetPresented: Bool // Binding, um den Zustand des Blattes zu steuern
    @State private var question = "" // Der Text der speziellen Anfrage
    @State private var requestSent = false // Ein Bool, um anzuzeigen, ob die Anfrage gesendet wurde
    @State private var remainingCharacters = 1000 // Die verbleibende Zeichenanzahl

    var body: some View {
        NavigationView {
            Form {
                // Abschnitt für die spezielle Anfrage
                Section(header: Text("Spezielle Frage anfragen")) {
                    TextEditor(text: $question) // Ein TextEditor zur Eingabe der speziellen Frage
                        .frame(height: 200) // Die Höhe des Eingabefelds anpassen
                        .overlay(
                            Text("\(remainingCharacters) Zeichen übrig")
                                .foregroundColor(remainingCharacters < 0 ? .red : .secondary) // Textfarbe basierend auf der verbleibenden Zeichenanzahl
                                .font(.caption)
                                .padding(.trailing, 8),
                            alignment: .bottomTrailing
                        )
                }
                // Abschnitt für die Anfrage senden
                Section {
                    Button(action: {
                        requestSent = true // Die Anfrage wurde gesendet
                    }) {
                        Text("Anfrage senden") // Der Text für die Schaltfläche
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(red: 0.4, green: 0.03, blue: 0.37)) // Hintergrundfarbe der Schaltfläche
                            .cornerRadius(10) // Abrunden der Ecken der Schaltfläche
                    }
                    .disabled(question.isEmpty || requestSent || remainingCharacters < 0) // Deaktiviere die Schaltfläche unter bestimmten Bedingungen
                    .opacity((requestSent || remainingCharacters < 0) ? 0.5 : 1) // Ändere die Undurchsichtigkeit der Schaltfläche basierend auf dem Status
                }
            }
            .onChange(of: question) { newValue in
                // Ändert die verbleibenden Zeichen basierend auf der Länge der speziellen Anfrage
                let remaining = 1000 - newValue.count
                remainingCharacters = max(remaining, 0) // Stellt sicher, dass die verbleibenden Zeichen nicht negativ sind
            }
            .navigationTitle("Spezielle Anfrage") // Der Titel des Navigationsbalkens
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Schließen") {
                        isSheetPresented = false // Schließt das Blatt, wenn die Schaltfläche "Schließen" gedrückt wird
                    }
                }
            }
        }
    }
}
