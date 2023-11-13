//
//  ContentView.swift
//  SwiftLabEffective
//
//  Created by  user on 11.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack{
            VStack{
                TabView(selection: $selectTab){
                    ViewHome()
                        .tag(Tab.home)
                    ViewCalendar()
                        .tag(Tab.calendar)
                    ViewMessage()
                        .tag(Tab.message)
                    ViewProfile()
                        .tag(Tab.profile)
                }
            }
            VStack{
                Spacer()
                CustomTabBar(selectedTab: $selectTab)
            }
        }
    }
}

#Preview {
    ContentView()
}
