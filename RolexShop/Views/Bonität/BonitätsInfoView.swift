import SwiftUI

struct BonitätsInfoView: View {
    var body: some View {
        ZStack {
           
            
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
                Text("Bonität")
                    .font(Font.custom("Cinzel", size: 30.44625))
                    .kerning(0.30446)
                    .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                
                ZStack {
                   
                    VStack {
                        
                        Text("INFO")
                          .font(
                            Font.custom("Montserrat", size: 18.67733)
                              .weight(.medium)
                          )
                          .foregroundColor(Color(red: 0.93, green: 0.85, blue: 0.74))
                          .frame(width: 61, height: 23, alignment: .topLeading)
                        Text("Your creditworthiness, often referred to as your \"credit score,\" is a crucial factor in many financial decisions. Lenders, landlords, and even potential employers may use it to evaluate your financial responsibility and trustworthiness. Knowing your credit score can help you make informed decisions and take steps to improve your financial health.")
                            .font(
                                Font.custom("Montserrat", size: 11)
                                    .weight(.medium)
                            )
                            .foregroundColor(.white)
                            .frame(width: 282.625, height: 105, alignment: .topLeading)
                        
                        Text("Here's how it works:\n\nUser-Friendly Interface: Our platform provides a user-friendly interface that makes it easy for you to access your credit score information. Whether you're a financial expert or just starting to understand credit, you'll find our tools intuitive and straightforward.\nSecure and Confidential: We take your privacy and security seriously. Rest assured that your personal and financial information will be handled with the utmost care and security. We use advanced encryption technology to protect your data.\nQuick Results: In just a few clicks, you can access your credit score and receive a detailed report. No need to wait in long lines or fill out extensive paperwork. We provide quick and convenient access to your credit information.\nUnderstanding Your Score: Not only will you receive your credit score, but our platform also provides explanations and insights into what factors may be affecting your score. This information can be invaluable for making improvements.\nImprovement Tips: If your credit score isn't where you want it to be, we offer tips and resources to help you take steps to improve it. Building good credit is a journey, and we're here to support you along the way.\nAccessible Anytime, Anywhere: Our platform is accessible 24/7 from the comfort of your home or anywhere you have an internet connection. You can check your credit score whenever it's convenient for you.\nAffordable Options: We offer various pricing options to fit your budget. You can choose the package that best suits your needs and goals.\n\n")
                          .font(
                            Font.custom("Montserrat", size: 10)
                              .weight(.heavy)
                          )
                          .foregroundColor(.white)
                          .frame(width: 253, alignment: .topLeading)
                        
                        
                        HStack(alignment: .center, spacing: 0) {
                            HStack(alignment: .center, spacing: 0) {
                                Text("ENTER")
                                  .font(Font.custom("Cinzel", size: 13))
                                  .kerning(0.13)
                                  .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.08))
                            }
                            .padding(.horizontal, 0)
                            .padding(.vertical, 12)
                            .frame(width: 246, height: 42, alignment: .center)
                            .background(Color(red: 0.93, green: 0.85, blue: 0.74))
                            .cornerRadius(2)
                        }
                        .padding(0)
                        .frame(width: 246, height: 42, alignment: .center)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                        
                    }
                }
                .frame(width: 352, height: 640)
                .background(Color(red: 0.34, green: 0.34, blue: 0.34))
                .cornerRadius(40)

            }
        }
        .frame(width: 412, height: 892.11731)
        .background(Color(red: 0.03, green: 0.03, blue: 0.04))
        .cornerRadius(13.184)
        .shadow(color: .black, radius: 70.864, x: 35.15733, y: 54.93333)
        .overlay(
          RoundedRectangle(cornerRadius: 13.184)
            .inset(by: 0.27)
            .stroke(Color(red: 0.87, green: 0.76, blue: 0.45), lineWidth: 0.55)
        )
    }
}

struct BonitätsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        BonitätsInfoView()
    }
}
