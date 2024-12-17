//
//  NavigationBarComponents.swift
//  ChatApp
//
//  Created by Mac on 17/12/2024.
//

import SwiftUI

struct NavigationBarColor : ViewModifier {
    var backColor : Color
    
    init(backColor : Color ){
        self.backColor = backColor
        let colorApperance = UINavigationBarAppearance()
        colorApperance.backgroundColor = UIColor(backColor)
        UINavigationBar.appearance().standardAppearance = colorApperance
        UINavigationBar.appearance().scrollEdgeAppearance = colorApperance
    }
    
    func body(content: Content) -> some View {
        content.background(backColor)
    }
}

extension View {
    func navigationBarColor(backColor : Color) -> some View {
        return modifier(NavigationBarColor(backColor: backColor))
    }
}

