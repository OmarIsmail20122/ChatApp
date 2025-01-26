//
//  FloatingField.swift
//  ChatApp
//
//  Created by MacBookPro on 21/01/2025.
//

import SwiftUI

struct FloatingField : View {
    var title : String
    var placeholder : String
    @Binding var text : String
    var body: some View {
        ZStack(alignment: .leading){
            Text(title)
                .foregroundColor(.gray)
                .font(.system(.subheadline , design:  .rounded))
                .offset(y : text.isEmpty ? 0 : -25)
            VStack{
                if title == "Password" {
                    SecureField(placeholder, text: $text)
                }else if title == "Phone Number" {
                    TextField(placeholder, text: $text)
                        .keyboardType(.phonePad)

                } else {
                    TextField(placeholder, text: $text)
                }
                Divider()
            }
        }
        .animation(.easeOut(duration: 1), value: text.isEmpty ? 0 : -25)
        .padding()
        .padding(.top , text.isEmpty ? 0 : 25)
    }
}

