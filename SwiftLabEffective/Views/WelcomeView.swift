import SwiftUI

struct WelcomeView: View {
    
    let user: User = User(imageAvatarName: "avatar", name: "James")
    
    var body: some View {
        HStack{
            VStack (alignment: .leading) {
                Text("Hello,")
                    .font(Font.custom(FontTheme.poppinsRegular, size: 16))
                    .foregroundColor(ColorTheme.Text.Secondary)
                Text("Hi " + user.name).font(Font.custom(FontTheme.poppinsBold, size: 20))
            }
            Spacer()
            Image(user.imageAvatarName)
                .resizable()
                .frame(width: 56, height: 56)
        }
    }
}

#Preview {
    WelcomeView()
}
