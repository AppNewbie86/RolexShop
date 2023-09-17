import SwiftUI

struct ProductView: View {
    // Eine State-Eigenschaft, um die Liste der Produkte zu speichern
    @State var products: [Product] = [
        Product(imageName: "Watch1", title: "Luxus-Uhr", description: "Eine hochwertige Luxus-Uhr", description2: "für den anspruchsvollen Kenner."),
        Product(imageName: "Watch2", title: "Luxus-Uhr", description: "Eine hochwertige Luxus-Uhr", description2: "für den anspruchsvollen Kenner."),
        Product(imageName: "Watch3", title: "Luxus-Uhr", description: "Eine hochwertige Luxus-Uhr", description2: "für den anspruchsvollen Kenner."),
    ]
    
    // Zustandseigenschaft, um das Sheet anzuzeigen oder auszublenden
    @State private var isSeeAllViewPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                // ProductHeaderView anzeigen
                ProductHeaderView()
                
                Text("ROLEX WATCHES")
                    .font(Font.custom("Cinzel", size: 27.712))
                    .kerning(0.27712)
                    .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                
                // Trennlinie mit Verlauf erstellen
                LinearGradient(
                    gradient: Gradient(stops: [
                        Gradient.Stop(color: Color(red: 0.93, green: 0.85, blue: 0.74), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00)
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .frame(height: 0.46187)
                
                HStack {
                    Text("The Collection")
                        .font(Font.custom("Readex Pro", size: 20.784))
                        .foregroundColor(.white)
                    
                    Spacer()

                    // Button zum Anzeigen des Sheets
                    Button(action: {
                        isSeeAllViewPresented.toggle()
                    }) {
                        Text("See all")
                            .font(Font.custom("Readex Pro", size: 16.16533))
                            .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                    }
                    
                }
                .padding(.horizontal, 20)
                
                // Trennlinie mit Verlauf erstellen
                LinearGradient(
                    gradient: Gradient(stops: [
                        Gradient.Stop(color: Color(red: 0.93, green: 0.85, blue: 0.74), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00)
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .frame(height: 0.46187)
                
                // ProductBodyView anzeigen und padding hinzufügen
                ProductBodyView()
                
                // Trennlinie mit Verlauf erstellen
                LinearGradient(
                    gradient: Gradient(stops: [
                        Gradient.Stop(color: Color(red: 0.93, green: 0.85, blue: 0.74), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00)
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .frame(height: 0.46187)
                
                // ProductFooterView anzeigen und padding hinzufügen
                ProductFooterTitleView(products: $products)
                ProductFooterView()
                    .padding(.bottom, 35)
              //  Spacer(minLength: 80)

            }
            .background(Color.black)
            .ignoresSafeArea()
            
            // Sheet anzeigen, wenn isSeeAllViewPresented true ist
            .sheet(isPresented: $isSeeAllViewPresented) {
                SeeAllView() // Hier sollte die View sein, die du anzeigen möchtest
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
