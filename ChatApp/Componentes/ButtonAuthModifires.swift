//
//  ButtonAuthModifires.swift
//  ChatApp
//
//  Created by MacBookPro on 21/01/2025.
//

import SwiftUI

struct ButtonAuth : View {
    var action: () -> Void
    var title : String
    var body: some View {
        Button(action: action){
            Text(title)
                .authButtonModify()
        }
    }
}


struct ButtonAuthModifires : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 360 , height:  40)
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}


extension View {
    func authButtonModify() -> some View {
        return modifier(ButtonAuthModifires())
    }
}
