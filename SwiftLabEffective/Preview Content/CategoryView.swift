//
//  CategoryView.swift
//  SwiftLabEffective
//
//  Created by  user on 13.11.2023.
//

import SwiftUI

struct Category {
    var imageName: String
    var name: String
}

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
                    .colorMultiply(Color("myPrimaryColor"))
                    .frame(width: 24, height: 24)
                    .clipShape(Circle())
                    .frame(width: 72, height: 72)
                    .background(Color("mySecBGColor"))
                    .clipShape(Circle())
                
                Text(category.name)
                    .font(Font.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color("myGrayColor"))
            }
        }
    }
}

#Preview {
    CategoryRowView()
}
