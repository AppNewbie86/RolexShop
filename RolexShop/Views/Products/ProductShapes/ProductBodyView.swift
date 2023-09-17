//
//import SwiftUI
//
//
//
//// Die Hauptansicht für die Produktdarstellung
//struct ProductBodyView: View {
//    // Eine State-Eigenschaft, um die Liste der Produkte zu speichern
//    @State var products: [Product] = [
//        Product(imageName: "Watch1", title: "GMT-Master II", description: "very Rich Clock", description2: "24932€"),
//        Product(imageName: "Watch2", title: "Oyster Perpetua II", description: "Glamour Clock", description2: "35678"),
//        Product(imageName: "Watch3", title: "Submarine II", description: "Marine Look", description2: "32456"),
//    ]
//
//    // Eine State-Eigenschaft, um den Zustand für das Anzeigen der Favoriten zu speichern
//    @State private var showingFavorites: Bool = false
//    @State private var isDetailSheetPresented = false
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                // Ein horizontaler ScrollView zum Anzeigen der Produkte
//                ScrollView(.horizontal) {
//                    HStack(spacing: 5) { // Abstand zwischen den Produkten
//                        ForEach(products) { product in
//                            VStack {
//                                ZStack {
//                                    Image(product.imageName)
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fill)
//                                        .frame(width: 150, height: 260)
//                                        .cornerRadius(20)
//                                        .overlay(
//                                            RoundedRectangle(cornerRadius: 20)
//                                                .stroke(Color.white, lineWidth: 2) // Stroke hinzufügen
//                                        )
//                                        .background(
//                                            LinearGradient(
//                                                stops: [
//                                                    Gradient.Stop(color: Color(red: 0.34, green: 0.34, blue: 0.34), location: 0.00),
//                                                    Gradient.Stop(color: .black, location: 1.00),
//                                                ],
//                                                startPoint: UnitPoint(x: -0.06, y: 0),
//                                                endPoint: UnitPoint(x: 1.52, y: 1.43)
//                                            )
//                                        )
//                                        .cornerRadius(10)
//                                        .padding()
//                                        .clipped()
//                                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5) // Schatten hinzufügen
//
//
//
//                                    Button(action: {
//                                        toggleLike(for: product)
//                                    }) {
//                                        Image(systemName: product.isLiked ? "heart.fill" : "heart")
//                                            .foregroundColor(product.isLiked ? .red : .white)
//                                            .font(.system(size: 20))
//                                            .padding(8)
//                                            .background(Color.black.opacity(0.5))
//                                            .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5) // Schatten hinzufügen
//                                            .clipShape(Circle())
//                                            .offset(x: 55, y: -100)
//                                    }
//                                }
//
//
//
//                                Group {
//                                    Text(product.title)
//                                        .font(.system(size: 20))
//                                        .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
//                                        .padding(.top, 8)
//
//                                    Text(product.description)
//                                        .font(.system(size: 12))
//                                        .foregroundColor(.white)
//
//                                    Text(product.description2)
//                                        .font(.system(size: 12))
//                                        .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
//                                        .fontWeight(.bold)
//                                    // Stilvoller Button mit Systemimage
//                                    VStack {
////
//                                           Button(action: {
//                                               // Zeige das DetailView-Sheet an
//                                               isDetailSheetPresented = true
//                                           }) {
//                                               HStack {
//                                                   Image(systemName: "arrow.right.circle.fill")
//                                                       .font(.system(size: 12))
//                                                       .foregroundColor(.white)
//                                                   Text("Details")
//                                                       .font(.headline)
//                                                       .foregroundColor(.white)
//                                               }
//
//                                           }
//                                       }
//                                       .sheet(isPresented: $isDetailSheetPresented) {
//                                           DetailView()
//                                       }
//                                       .frame(width: 150, height: 50)
//                                       .background(
//                                                LinearGradient(
//                                                stops: [
//                                                    Gradient.Stop(color: Color(red: 0.93, green: 0.85, blue: 0.74), location: 0.00),
//                                                    Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00),
//                                                ],
//                                                    startPoint: UnitPoint(x: 0.1, y: 0.1),
//                                                    endPoint: UnitPoint(x: 1.15, y: 1.16)
//                                                )
//                                            ).cornerRadius(2)
//
//
//
//                                        }
//
//                                }
//                            }
//                        }
//                    }
//                    .padding(.horizontal, 20) // Füge horizontalen Abstand hinzu
//                }
//            }
//            .background(Color.black)
//            .ignoresSafeArea()
//        }
//    // Eine Funktion zum Umschalten des "Gefällt mir"-Status für ein Produkt
//    private func toggleLike(for product: Product) {
//        if let index = products.firstIndex(where: { $0.id == product.id }) {
//            products[index].isLiked.toggle()
//        }
//    }
//
//    }
//
//




import SwiftUI

struct ProductBodyView: View {
    @State var products: [Product] = [
        Product(imageName: "Watch1", title: "GMT-Master II", description: "very Rich Clock", description2: "24932€"),
        Product(imageName: "Watch2", title: "Oyster Perpetua II", description: "Glamour Clock", description2: "35678"),
        Product(imageName: "Watch3", title: "Submarine II", description: "Marine Look", description2: "32456"),
    ]
    
    @State private var showingFavorites: Bool = false
    @State private var isDetailSheetPresented = false

    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal) {
                    HStack(spacing: 5) {
                        ForEach(products.indices, id: \.self) { index in
                            ProductCardView(product: $products[index], isDetailSheetPresented: $isDetailSheetPresented)
                                .animation(.easeInOut) // Animation für die Produktkarte hinzufügen
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .background(Color.black)
                .ignoresSafeArea()
            }
        }
    }
}

struct ProductCardView: View {
    @Binding var product: Product
    @Binding var isDetailSheetPresented: Bool
    
    var body: some View {
        VStack {
            ZStack {
                Image(product.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 260)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 2)
                    )
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: Color(red: 0.34, green: 0.34, blue: 0.34), location: 0.00),
                                Gradient.Stop(color: .black, location: 1.00),
                            ],
                            startPoint: UnitPoint(x: -0.06, y: 0),
                            endPoint: UnitPoint(x: 1.52, y: 1.43)
                        )
                    )
                    .cornerRadius(10)
                    .padding()
                    .clipped()
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
                
                Button(action: {
                    toggleLike()
                }) {
                    Image(systemName: product.isLiked ? "heart.fill" : "heart")
                        .foregroundColor(product.isLiked ? .red : .white)
                        .font(.system(size: 20))
                        .padding(8)
                        .background(Color.black.opacity(0.5))
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
                        .clipShape(Circle())
                        .offset(x: 55, y: -100)
                        .animation(.easeInOut) // Animation für den Herz-Button hinzufügen
                }
            }
            
            Text(product.title)
                .font(.system(size: 20))
                .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                .padding(.top, 8)
            
            Text(product.description)
                .font(.system(size: 12))
                .foregroundColor(.white)
            
            Text(product.description2)
                .font(.system(size: 12))
                .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                .fontWeight(.bold)
            
            Button(action: {
                isDetailSheetPresented = true
            }) {
                HStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                    Text("Details")
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            .sheet(isPresented: $isDetailSheetPresented) {
                DetailView()
            }
            .frame(width: 150, height: 50)
            .background(
                LinearGradient(
                    stops: [
                        Gradient.Stop(color: Color(red: 0.93, green: 0.85, blue: 0.74), location: 0.00),
                        Gradient.Stop(color: Color(red: 0.6, green: 0.47, blue: 0.32), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.1, y: 0.1),
                    endPoint: UnitPoint(x: 1.15, y: 1.16)
                )
            )
            .cornerRadius(2)
        }
    }

    private func toggleLike() {
        product.isLiked.toggle()
    }
}
