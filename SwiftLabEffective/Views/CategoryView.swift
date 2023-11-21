import SwiftUI

struct CategoryView: View {
    var category: Category
    
    var body: some View {
        Button (action: {
            print("Category Tapped")
        }){
            VStack{
                Image(category.imageName)
                    .resizable()
                    .scaledToFit()
                    .colorMultiply(ColorTheme.Primary)
                    .frame(width: 24, height: 24)
                    .frame(width: 72, height: 72)
                    .background(ColorTheme.BackgroundSecondary)
                    .clipShape(Circle())
                
                Text(category.name)
                    .font(Font.custom(FontTheme.poppinsRegular, size: Sizes.TextMedium))
                    .foregroundColor(ColorTheme.TextSecondary)
            }
        }
    }
}

#Preview {
    CategoryView(category: Category(
        imageName: "iconCovid",
        name: "Covid 19")
    )
}
