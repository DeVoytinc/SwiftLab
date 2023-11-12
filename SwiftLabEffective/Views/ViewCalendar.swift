//
//  ViewCalendar.swift
//  SwiftLabEffective
//
//  Created by  user on 11.11.2023.
//

import Foundation
import SwiftUI

struct ViewCalendar: View {
    var body: some View{
        ZStack{
            Image(systemName: "calendar")
                .foregroundColor(Color.black)
                .font(.system(size:100.0))
        }
    }
}

struct ViewCalendar_Preview: PreviewProvider{
    static var previews: some View{
        ViewCalendar()
    }
}
