//
//  ViewMessage.swift
//  SwiftLabEffective
//
//  Created by  user on 11.11.2023.
//

import Foundation
import SwiftUI

struct ViewMessage: View {
    var body: some View{
        ZStack{
            Image(systemName: "message")
                .foregroundColor(Color.black)
                .font(.system(size:100.0))
        }
    }
}

struct ViewMessage_Preview: PreviewProvider{
    static var previews: some View{
        ViewMessage()
    }
}
