
import SwiftUI

        struct DetailBodyView: View {
            var body: some View {
               
                    ZStack {
                    
                        
                        ZStack {
                            
                            ZStack {
                                Image("Vector 240")
                                    .frame(width: 235.50092, height: 1118.5)
                                    .shadow(color: .black.opacity(0.51), radius: 27.5, x: -2, y: 4)
                                    .overlay(
                                        Rectangle()
                                            .stroke(Color(red: 0.88, green: 0.74, blue: 0.4), lineWidth: 2)
                                    )
                                
                                Image("Vector 240")
                                    .frame(width: 235.50092, height: 1118.5)
                                    .shadow(color: .black.opacity(0.51), radius: 27.5, x: -2, y: 4)
                                    .overlay(
                                        Rectangle()
                                            .stroke(Color(red: 0.93, green: 0.85, blue: 0.74), lineWidth: 2)
                                    )
                                
                                Image("Vector 238")
                                    .frame(width: 235.50092, height: 1087.5)
                                    .shadow(color: .black.opacity(0.51), radius: 27.5, x: -2, y: 4)
                                    .overlay(
                                        Rectangle()
                                            .stroke(Color(red: 0.93, green: 0.85, blue: 0.74), lineWidth: 2)
                                    )
                                
                                
                            }
                            .frame(width: 624, height: 1119)
                            
                        }
                        .frame(width: 624, height: 1119)
                        ZStack {
                            
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 268, height: 545)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 268, height: 545)
                                .background(
                                    
                                    
                                    Image("Watch1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 268, height: 545)
                                        .clipped()
                                )
                            
                            Image("Frame 3469")
                                .frame(width: 109, height: 181)
                                .offset(x:-75,y:-35)
                            
                            
                        }
                        .frame(width: 268, height: 545)
                        .shadow(color: .black.opacity(0.35), radius: 19, x: 0, y: -3)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Image("Ellipse 498")
                                .frame(width: 12, height: 12)
                                .background(Color(red: 0.18, green: 0.22, blue: 0.22))
                            
                            Image("Ellipse 498")
                                .frame(width: 12, height: 12)
                                .background(Color(red: 0.18, green: 0.22, blue: 0.22))
                            
                            Image("Ellipse 498")
                                .frame(width: 12, height: 12)
                                .background(Color(red: 0.18, green: 0.22, blue: 0.22))
                            
                            Image("Ellipse 498")
                                .frame(width: 12, height: 12)
                                .background(Color(red: 0.18, green: 0.22, blue: 0.22))
                            
                            Image("Ellipse 503")
                                .frame(width: 16, height: 16)
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
                            
                        } // End VSTACK left Picker Circles
                        .offset(x:-160)
                        
                    }
                    .frame(width: 375, height: 812)
                    .background(Color(red: 0.03, green: 0.03, blue: 0.04))
                    .cornerRadius(12)
                    .shadow(color: .black, radius: 64.5, x: 32, y: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.25)
                            .stroke(Color(red: 0.87, green: 0.76, blue: 0.45), lineWidth: 0.5)
                    )
                    

            }
        }



struct DetailBodyView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBodyView()
    }
}
