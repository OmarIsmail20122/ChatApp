//
//  InboxView.swift
//  ChatApp
//
//  Created by Mac on 17/12/2024.
//

import SwiftUI

struct InboxView: View {
    
    @StateObject private var newMessageViewModel = InboxViewModel()
    var body: some View {
        NavigationStack{
            ZStack(alignment: .bottomTrailing){
                List{
                    ForEach(0 ..< 5){ _ in
                        NavigationLink(destination: {
                            ChatView().navigationBarBackButtonHidden()
                        }, label: {
                            HStack(spacing:20){
                                
                                CirculeProfileImage(size: .medium, userModel: UserModel.MOK_DATA)
                                
                                VStack(alignment: .leading, spacing:10){
                                    Text("OmarIsmail")
                                        .foregroundColor(Color("darkMode"))
                                        .font(.system(size: 16 ))
                                        .font(.title3)
                                    Text("Hello Omar")
                                        .font(.system(size: 13 , weight: .medium))
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                                
                                Text("04/05/2024")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                    }
                    )
                }
           }
                .listStyle(PlainListStyle())
                .padding(.top)
                Button(action: {
                    newMessageViewModel.showNewMessage.toggle()
                }, label: {
                    RoundedRectangle(cornerRadius: 20 )
                        .fill(Color(.darkGray))
                        .frame(width: 70 , height: 70)
                        .padding()
                        .overlay(content: {
                            Image(systemName:"plus.bubble.fill" )
                                .resizable()
                                .foregroundColor(Color("buttonColor"))
                                .frame(width: 30 , height:  30)
                        })
                })
//                ButtonItemsTralling(imageName: "plus.bubble.fill")
            }
            .fullScreenCover(isPresented: $newMessageViewModel.showNewMessage){
                NewMessageView()
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Text("WhatsApp")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .navigationBarColor(backColor: Color(.darkGray))
                    
                }
                    
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 24){
                        Image(systemName: "camera")
                        Image(systemName: "magnifyingglass")
                        NavigationLink(destination: SettingView().navigationBarBackButtonHidden(), label: {
                            Image(systemName: "ellipsis")
                        })
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
