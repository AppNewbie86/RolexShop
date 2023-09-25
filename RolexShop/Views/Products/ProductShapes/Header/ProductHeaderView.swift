import SwiftUI


struct ProductHeaderView: View {
    var body: some View {
        HStack {
            Spacer(minLength: 150)
//            HeaderButton(imageName: "Menu")
//                .frame(maxWidth: .infinity, alignment: .leading)
//            
            Image("Decorative")
                .resizable()
                .frame(width: 100, height: 32) // Passe die Größe an
            
            HeaderButton(imageName: "Search")
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding(20)
        .background(Color.black)
    }
}


struct HeaderButton: View {
    var imageName: String
    
    var body: some View {
        Button(action: {
            // Aktion für den Button ausführen
            // Zum Beispiel: Navigation zu einem entsprechenden Bildschirm
        }) {
            Image(imageName)
                .resizable()
                .frame(width: 32, height: 32)
        }
    }
}
