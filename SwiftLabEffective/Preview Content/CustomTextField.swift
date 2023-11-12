//
//  CustomTextField.swift
//  SwiftLabEffective
//
//  Created by  user on 13.11.2023.
//

import SwiftUI

struct CustomTextField: View {
    
    @State private var text: String = ""
    
    var body: some View {
        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 12) {
            Image("search")
                .resizable()
                .frame(width: 24, height: 24)
                .colorMultiply(Color("myGrayColor"))
                .padding(.leading, 16)
            TextField("", text: $text, prompt: Text("Search doctor or health issue").foregroundColor(Color("myGrayColor")))
                .font(Font.custom("Poppins-Regular", size: 15))
                .padding(.vertical, 16)
        }
        .background(Color("mySecBGColor"))
        .cornerRadius(12)
    }
}

#Preview {
    CustomTextField()
}
