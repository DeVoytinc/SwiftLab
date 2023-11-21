import SwiftUI

struct WelcomeView: View {
    
    let user: User = User(imageAvatarName: "avatar", name: "James")
    
    var body: some View {
        HStack{
            VStack (alignment: .leading) {
                Text("Hello,")
                    .font(Font.custom(
                        FontTheme.poppinsRegular,
                        size: Sizes.TextLarge))
                    .foregroundColor(ColorTheme.TextSecondary)
                Text("Hi " + user.name).font(Font.custom(
                    FontTheme.poppinsBold,
                    size: Sizes.TextSuperLarge))
            }
            Spacer()
            Image(user.imageAvatarName)
                .resizable()
                .frame(
                    width: Sizes.AvatarSizeInWelcome,
                    height: Sizes.AvatarSizeInWelcome)
        }
    }
}

#Preview {
    WelcomeView()
}
