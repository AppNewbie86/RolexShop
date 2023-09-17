import SwiftUI

struct SeeAllView: View {
    // Beispiel-Produktliste
    let products: [Product] = [
        Product(imageName: "Watch1", title: "GMT-Master II", description: "Very Rich Clock", description2: "24,932€"),
        Product(imageName: "Watch2", title: "Datejust Oyster Perpetua", description: "Glamour Clock", description2: "35,678€"),
        Product(imageName: "Watch3", title: "Submariner II", description: "Marine Look", description2: "32,456€"),
        // Füge weitere Produkte hinzu
    ]

    // Definiere die Anzahl der Spalten im Gitter
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
                    Text("PRODUCTS")
                        .font(Font.custom("Cinzel", size: 27.712))
                        .kerning(0.27712)
                        .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                    

                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 15) {
                            ForEach(products, id: \.self) { product in
                                NavigationLink(destination: ProductDetail(product: product)) {
                                    ProductItemView(product: product)
                                }
                            }
                        }
                        .padding(16) // Füge allgemeinen Abstand hinzu
                        
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
                        LazyVGrid(columns: columns, spacing: 15) {
                            ForEach(products, id: \.self) { product in
                                NavigationLink(destination: ProductDetail(product: product)) {
                                    ProductItemView(product: product)
                                }
                            }
                        }
                        .padding(16)
                    }
                }
                
            }
        }
    }
}

struct SeeAllView_Previews: PreviewProvider {
    static var previews: some View {
        SeeAllView()
    }
}

struct ProductItemView: View {
    let product: Product

    var body: some View {
        VStack {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 150, maxHeight: 210)

            Text(product.title)
                .font(Font.custom("Cinzel", size: 20))
                .kerning(0.27712)
                .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))

            Text(product.description2)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(
                    LinearGradient(
                        gradient: Gradient(stops: [
                            Gradient.Stop(color: Color(red: 0.93, green: 0.85, blue: 0.74), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
        )
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(
                    LinearGradient(
                        gradient: Gradient(stops: [
                            Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00),
                            Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00),
                            Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00)
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1.5
                )
        )
        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
    }
}

struct ProductDetail: View {
    let product: Product
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Image(product.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 5)
                    
                    Divider()
                        .background(
                            LinearGradient(
                                gradient: Gradient(stops: [
                                    Gradient.Stop(color: Color(red: 0.93, green: 0.85, blue: 0.74), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00)
                                ]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    
                    Text(product.title)
                        .font(Font.custom("Cinzel", size: 27))
                        .kerning(0.27712)
                        .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                    
                    Text(product.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Divider()
                        .background(
                            LinearGradient(
                                gradient: Gradient(stops: [
                                    Gradient.Stop(color: Color(red: 0.93, green: 0.85, blue: 0.74), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00)
                                ]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    
                    Text(product.description2)
                        .font(Font.custom("Cinzel", size: 24))
                        .kerning(0.27712)
                        .foregroundColor(Color(red: 0.6, green: 0.47, blue: 0.32))
                }
                .padding(20)
            }
            .navigationBarTitle(product.title, displayMode: .inline)
        }
    }
    
}
