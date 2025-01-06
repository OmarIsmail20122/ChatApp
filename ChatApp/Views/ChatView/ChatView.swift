//
//  ChatView.swift
//  ChatApp
//
//  Created by MacBookPro on 05/01/2025.
//

import SwiftUI

struct ChatView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject var chatVM = ChatViewModel()
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    ForEach(0..<1) { _ in
                        Section{
                            ForEach(0..<3){_ in
                                MessageSendStyle()
                            }
                        }
                        header : {
                            Capsule()
                                .fill(Color(.systemGray5))
                                .frame(width:130 , height: 40)
                                .overlay{
                                    Text("11/5/2020")
                                    
                                }
                        }
                    }
                }
                .padding(.top)
            }
            Spacer()
            HStack{
                ZStack{
                    TextField("Message...", text: $chatVM.messageText , axis: .vertical)
                        .multilineTextAlignment(TextAlignment.leading)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                        .padding(.vertical , 12)
                        .padding(.leading , 44)
                        .padding(.trailing , 60)
                        .background(Color(.systemGroupedBackground))
                        .clipShape(Capsule())
                    HStack{
                        Image(systemName: "face.smiling")
                        Spacer()
                        Image(systemName: "paperclip")
                        Image(systemName: "camera")
                    }
                    .padding(.horizontal)
                    .foregroundColor(.gray)
                }
                Button(action: {}, label: {
                    Image(systemName:chatVM.messageText == "" ? "mic.circle.fill" : "play.circle.fill")
                        .resizable()
                        .frame(width: 40 , height: 40)
                        .foregroundColor(Color(.darkGray))
                })
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(chatVM.tabbarVisiblity , for: .tabBar)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack(spacing: 10){
                        Button(action: {
                            chatVM.tabbarVisiblity = .visible
                            dismiss()
                        }){
                            Image(systemName: "arrow.backward")
                                .foregroundColor(.white)
                        }
                        CirculeProfileImage(size: .xSmale, userModel: UserModel.MOK_DATA)
                            Text("OmarIsmail")
                            .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.white)
                           
                        
                    }
                    .foregroundColor(.white)
                }
               
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 24){
                       
                        Image(systemName: "video.fill")
                        Image(systemName: "phone.fill")
                        Image(systemName: "ellipsis")
                    }
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                }
            }
        }
        .padding()
        .background(Color(.lightGray))
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
