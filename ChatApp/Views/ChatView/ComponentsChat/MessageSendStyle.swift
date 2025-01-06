//
//  MessageSendStyle.swift
//  ChatApp
//
//  Created by MacBookPro on 06/01/2025.
//

import SwiftUI

struct MessageSendStyle: View {
    var body: some View {
        VStack(alignment: .leading , spacing: -15){
            Text("Hello Omar")
            HStack{
                Text("Hello Omar")
                    .foregroundColor(.clear)
                Text("10:24")
                    .foregroundColor(.gray)
                    .font(.footnote)
            }
        }
        .font(.subheadline)
        .padding(12)
        .background(Color("backColor"))
        .clipShape(ChatBubble())
        .frame(maxWidth: .infinity , alignment: .trailing)
        .padding(.horizontal)
        
    }
}

struct MessageSendStyle_Previews: PreviewProvider {
    static var previews: some View {
        MessageSendStyle()
    }
}
