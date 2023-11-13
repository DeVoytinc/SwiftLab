//
//  ColorTheme.swift
//  SwiftLabEffective
//
//  Created by  user on 13.11.2023.
//

import SwiftUI

struct ColorTheme{
    
    static let Primary = Color("myPrimaryColor")
    
    
    struct Text{
        static let Yellow = Color("myYellow")
        static let Primary = Color("myBlackText")
        static let Secondary = Color("myGrayColor")
        static let White = Color(.white)
        static let LightBlue = Color("myLightBlue")
    }
    
    struct BottomNavBar{
        static let BottomNavBarContent = Color("bottomNavBarContent")
        static let BottomNavBarChip = Color("bottomNavBarContent").opacity(0.10)
    }
    
    struct BG{
        static let Background = Color("myBGColor")
        static let BackgroundSecondary = Color("mySecBGColor")
    }
    
    
    

}
