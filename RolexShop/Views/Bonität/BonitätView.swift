import SwiftUI

struct BonitätView: View {
    @State private var showBonitätsInfoView = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text("CAUTION")
                            .font(
                                Font.custom("Montserrat", size: 18.67733)
                                    .weight(.medium)
                            )
                            .foregroundColor(.white)
                            .padding(.leading)
                        
                        Image(systemName: "exclamationmark.bubble")
                            .frame(width: 24, height: 24)
                            .background(Color(red: 1, green: 0.98, blue: 0.98))
                            .cornerRadius(12)
                    }
                    HStack {
                        Spacer()
                        Button(action: {
                            showBonitätsInfoView = true
                        }) {
                            Image("Frame 1000000876")
                                .frame(width: 72, height: 72)
                        }
                        .padding(.trailing)
                        .sheet(isPresented: $showBonitätsInfoView, content: {
                            BonitätsInfoView()
                        }) // Hier wird das Sheet angezeigt
                    }
                    HStack {
                        Spacer(minLength: 20)
                        Text("Title: Check Your Creditworthiness Here\n\nAre you curious about your financial standing \nand want to ensure that your credit is in good shape? \nLook no further! Our platform offers you a convenient and \nhassle-free way to check your creditworthiness.")
                            .font(
                                Font.custom("Montserrat", size: 11.95643)
                                    .weight(.black)
                            )
                            .foregroundColor(.white)
                        
                    }
                }
                .frame(width: 352, height: 210)
                .background(Color(red: 0.34, green: 0.34, blue: 0.34))
                .cornerRadius(10)
                
                
            }
        }
    }
}

struct BonitätView_Previews: PreviewProvider {
    static var previews: some View {
        BonitätView()
    }
}
