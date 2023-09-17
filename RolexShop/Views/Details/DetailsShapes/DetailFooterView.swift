

import SwiftUI

struct DetailFooterView: View {
    
    @State private var isPaymentViewPresented = false

    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 343, height: 251)
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
                    .cornerRadius(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .inset(by: 8) // Einen kleinen Inset für den äußeren Rand hinzufügen
                            .stroke(Color(red: 0.93, green: 0.85, blue: 0.74), lineWidth: 1)
                    )
                VStack {
                    Spacer()
                    HStack {
                        Text("GMT- MASTER II")
                            .font(Font.custom("Cinzel", size: 20))
                            .kerning(1.5)
                            .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                        Spacer(minLength: 20)
                        Text("Since 1982")
                            .font(Font.custom("Cinzel", size: 10))
                            .kerning(1)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 16) // Horizontalen Abstand für den Text hinzufügen
                    
                    Text("The Cosmopolitan Watch")
                        .font(Font.custom("Readex Pro", size: 14))
                        .foregroundColor(.white)
                        .padding()

                    Group {
                        Text("An original version of the GMT-Master")
                            .font(Font.custom("Readex Pro", size: 12))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.81, green: 0.81, blue: 0.81))
                            .frame(width: 311, alignment: .topLeading)
                            .lineLimit(nil) // Entferne die Zeilenbeschränkung
                        Text("II with the crown on the left side of the case")
                            .font(Font.custom("Readex Pro", size: 12))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.81, green: 0.81, blue: 0.81))
                            .frame(width: 311, alignment: .topLeading)
                            .lineLimit(nil) // Entferne die Zeilenbeschränkung
                        Text("and a green and black bezel.")
                            .font(Font.custom("Readex Pro", size: 12))
                            .kerning(0.5)
                            .foregroundColor(Color(red: 0.81, green: 0.81, blue: 0.81))
                            .frame(width: 311, alignment: .topLeading)
                            .lineLimit(nil) // Entferne die Zeilenbeschränkung
                    }
                    .layoutPriority(1)

                    HStack {
                        Text("More Details")
                            .font(Font.custom("Readex Pro", size: 13))
                            .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                            .padding()
                        Spacer()
                    }
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Price")
                                .font(Font.custom("Readex Pro", size: 12))
                                .foregroundColor(.white)
                            
                            Text("£52,995")
                                .font(Font.custom("Cinzel", size: 18))
                                .kerning(1)
                                .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                        }
                        .padding(.horizontal, 16) // Horizontalen Abstand für den Text hinzufügen
                        Spacer()
                        
                        Button(action: {
                                isPaymentViewPresented.toggle()
                        }) {
                        Text("Buy Now")
                                .font(Font.custom("Cinzel", size: 18))
                                .kerning(1)
                                .foregroundColor(.white)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
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
                            .cornerRadius(10)
                    }
                    .sheet(isPresented: $isPaymentViewPresented) {
                    PaymentView()
                }
                .padding(.horizontal, 16) // Horizontalen Abstand für den Button hinzufügen
                .padding(.bottom, 16) // Unteren Abstand für den Button hinzufügen
                    }
                }
            }
            .frame(width: 343, height: 251)
        }
    }
}

struct DetailFooterView_Previews: PreviewProvider {
    static var previews: some View {
        DetailFooterView()
    }
}
