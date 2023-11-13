//
//  ViewProfile.swift
//  SwiftLabEffective
//
//  Created by  user on 11.11.2023.
//

import Foundation
import SwiftUI

struct ViewProfile: View {
    var body: some View{
        ZStack{
            Image(systemName: "person")
                .foregroundColor(Color.black)
                .font(.system(size:100.0))
        }
    }
}

struct ViewProfile_Preview: PreviewProvider{
    static var previews: some View{
        ViewProfile()
    }
}
