import SwiftUI

// Eine SwiftUI-Ansicht für den Startbildschirm der App.
struct StartView: View {
    
    @State private var showProductView = false // Ein Zustand, um die Anzeige der Produktansicht zu steuern.

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Image("logo")
                    .frame(width: 111.7288, height: 64)
                
                Spacer()
                
                Image("Image01")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 375, height: 521)
                    .clipped()
                    .padding(.bottom, 20)
                
                HStack {
                    Text("Swiss")
                        .font(Font.custom("Cinzel", size: 36))
                        .kerning(0.36)
                        .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                    
                    Spacer()
                }
                
                HStack {
                    Text("Luxury")
                        .font(Font.custom("Cinzel", size: 28))
                        .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                    
                    Spacer()
                }
                
                HStack {
                    Text("Watches")
                        .font(Font.custom("Cinzel", size: 40))
                        .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                    
                    Spacer()
                    
                    Button(action: {
                        showProductView.toggle() // Bei Button-Tap wird der Zustand 'showProductView' umgeschaltet.
                    }) {
                        Image("Frame 1000000876")
                            .frame(width: 72, height: 72)
                    }
                }
            }
            .frame(width: 375, height: 812)
            .background(.black)
            .cornerRadius(12)
            .shadow(color: Color(red: 0.04, green: 0.03, blue: 0.03), radius: 67.5, x: 50, y: 51)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.87, green: 0.76, blue: 0.45).opacity(0), lineWidth: 1)
            )
            
            // Anmerkung: Die NavigationLink-Anweisung ist auskommentiert, und stattdessen wird ein Sheet verwendet, um die Produktansicht anzuzeigen.
//            NavigationLink(destination: ProductView(), isActive: $showProductView) {
//                EmptyView()
//            }
            .sheet(isPresented: $showProductView) {
                ProductView() // Zeigt die Produktansicht an, wenn 'showProductView' wahr ist.
            }
        }
    }
}

// Eine SwiftUI-Vorschau für die Startansicht.
struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
