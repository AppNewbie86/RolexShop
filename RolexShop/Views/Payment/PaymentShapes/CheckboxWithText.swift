
import SwiftUI


struct CheckboxWithText: View {
    @State private var isChecked = false

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image(systemName: isChecked ? "checkmark.square" : "square")
                    .resizable()
                    .frame(width: 21.97333, height: 21.97333)
                    .onTapGesture {
                        isChecked.toggle()
                    }
                
                Text("$10 Standard delivery")
                    .font(
                        Font.custom("Montserrat", size: 16.48)
                            .weight(.medium)
                    )
                    .foregroundColor(.white)
            }
        }
        .padding(0)
    }
}

struct CheckboxWithText_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxWithText()
    }
}
