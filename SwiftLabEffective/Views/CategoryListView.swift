import SwiftUI

struct CategoryRowView: View {
    
    let categories: [Category] = [
        Category(imageName: "iconCovid", name: "Covid 19"),
        Category(imageName: "iconDoctor", name: "Doctor"),
        Category(imageName: "iconMedicine", name: "Medicine"),
        Category(imageName: "iconHospital", name: "Hospital")
    ]
    
    var body: some View {
        HStack  {
            ForEach(categories.indices) { index in
                CategoryView(category: categories[index])
                
                if index != categories.indices.last{
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    CategoryRowView()
}
