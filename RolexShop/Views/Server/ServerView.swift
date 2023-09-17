
import SwiftUI

struct ServerView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 70.11236, height: 60)
                    .background(Color(red: 0.93, green: 0.85, blue: 0.74).opacity(0))
                    .background(
                        Image("Rolexkrone")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70.11235809326172, height: 60)
                            .clipped()
                    )
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                Text("SERVER")
                    .font(Font.custom("Cinzel", size: 30.44625))
                    .kerning(0.30446)
                    .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                Spacer()

                ZStack {
                    
                    VStack {
                        Text("REQUEST")
                            .font(Font.custom("Cinzel", size: 30.44625))
                            .kerning(0.30446)
                            .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                        
                        Image("data-04")
                            .frame(width: 121, height: 121)
                        
                        Text("ONE MOMENT PLEASE")
                            .font(Font.custom("Cinzel", size: 15))
                            .kerning(0.15)
                            .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                        
                        Text("WE CHECKING YOUR\nPAYMENT")
                            .font(Font.custom("Cinzel", size: 20))
                            .kerning(0.2)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                            .frame(width: 235, height: 56, alignment: .top)
                    }
                   
                }
                .frame(width: 380, height: 386)
                .background(Color(red: 0.34, green: 0.34, blue: 0.34))
                .cornerRadius(30)
                .overlay(
                  RoundedRectangle(cornerRadius: 30)
                    .inset(by: 1)
                    .stroke(Color(red: 0.93, green: 0.85, blue: 0.74), lineWidth: 2)
                )
                Spacer()
                         Text("© 2023 Your Company/Name. All rights reserved.Imprint | Privacy Policy | Terms of Use")
                             .font(
                                 Font.custom("Montserrat", size: 11.95643)
                                     .weight(.medium)
                             )
                             .multilineTextAlignment(.center)
                             .foregroundColor(.white)
                             .frame(width: 354.00684, height: 92.18262, alignment: .top)
                 
            }
        }
    }
}
struct ServerView_Previews: PreviewProvider {
    static var previews: some View {
        ServerView()
    }
}
