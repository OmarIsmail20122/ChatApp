//
//  MessageSendStyle.swift
//  ChatApp
//
//  Created by MacBookPro on 06/01/2025.
//

import SwiftUI

struct MessageSendStyle: View {
    let isFromCurrentUser : Bool
    let message : MessageModel
    var body: some View {
        if isFromCurrentUser {
            VStack(alignment: .leading , spacing: -15){
                Text(message.messageText)
               HStack{
                   Text(message.messageText)
                       .foregroundColor(.clear)
                   Text("10:24")
                       .foregroundColor(.gray)
                       .font(.footnote)
               }
           }
           .font(.subheadline)
           .padding(12)
           .background(Color("backColor"))
           .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
           .frame(maxWidth: .infinity , alignment: .trailing)
        }
        else {
            HStack(spacing:8){
                CirculeProfileImage(size: .xxSmale, userModel: UserModel.MOK_DATA)
                VStack(alignment: .leading , spacing: -15){
                   Text(message.messageText)
                   HStack{
                       Text(message.messageText)
                           .foregroundColor(.clear)
                       Text("10:24")
                           .foregroundColor(.gray)
                           .font(.footnote)
                   }
               }
                .font(.subheadline)
                .padding(12)
                .background(Color(.white))
                .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                .frame(maxWidth: .infinity , alignment: .leading)
            }
           
        }
    }
}

struct MessageSendStyle_Previews: PreviewProvider {
    static var previews: some View {
        MessageSendStyle(isFromCurrentUser: Bool.random(), message: MessageGroupModel.MOCK_GROUP_MESSAGE.first!.messages.first!)
    }
}
