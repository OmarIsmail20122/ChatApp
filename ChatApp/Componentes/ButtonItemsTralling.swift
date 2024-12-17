//
//  ButtonItemsTralling.swift
//  ChatApp
//
//  Created by Mac on 17/12/2024.
//

import SwiftUI

struct ButtonItemsTralling: View {
    var imageName : String = ""
    var body: some View {
        Button(action: {}, label: {
            RoundedRectangle(cornerRadius: 20 )
                .fill(Color(.darkGray))
                .frame(width: 70 , height: 70)
                .padding()
                .overlay(content: {
                    Image(systemName:imageName )
                        .resizable()
                        .foregroundColor(Color("buttonColor"))
                        .frame(width: 30 , height:  30)
                })
        })
    }
}

struct ButtonItemsTralling_Previews: PreviewProvider {
    static var previews: some View {
        ButtonItemsTralling()
    }
}
