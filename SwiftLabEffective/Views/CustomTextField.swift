//
import SwiftUI

struct CustomTextField: View {
    
    @State private var text: String = ""
    
    var body: some View {
        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 12) {
            Image("search")
                .resizable()
                .frame(width: 24, height: 24)
                .colorMultiply(ColorTheme.TextSecondary)
                .padding(.leading, 16)
            TextField("", text: $text, prompt: Text("Search doctor or health issue")
                .foregroundColor(ColorTheme.TextSecondary))
                .font(Font.custom(
                    FontTheme.poppinsRegular,
                    size: Sizes.TextLarge))
                .padding(.vertical, 16)
        }
        .background(ColorTheme.BackgroundSecondary)
        .cornerRadius(12)
    }
}

#Preview {
    CustomTextField()
}
