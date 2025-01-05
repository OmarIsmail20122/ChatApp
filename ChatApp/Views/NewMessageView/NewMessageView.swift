//
//  NewMessageView.swift
//  ChatApp
//
//  Created by MacBookPro on 05/01/2025.
//

import SwiftUI

struct NewMessageView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 24){
                    CircleImageForNewMessageView(imageName:  "person.2.circle.fill", title: "New Group")
                    CircleImageForNewMessageView(imageName:  "person.circle.fill", title: "New Contact")
                    CircleImageForNewMessageView(imageName:  "person.crop.square.filled.and.at.rectangle", title: "New Community")
                }
                .padding(.top)
                
                Text("Contacts on WhatsApp")
                    .foregroundColor(Color(.darkGray))
                    .padding(.top)
                    .frame(maxWidth: .infinity , alignment: .leading)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .padding(.bottom)
            
                ForEach (0..<5) { _ in
                    HStack{
                        CirculeProfileImage(size: .smale, userModel: nil)
                        
                        VStack(alignment: .leading, spacing:5){
                            Text("OmarIsmail")
                                .foregroundColor(Color("darkMode"))
                                .font(.system(size: 16 ))
                                .font(.title3)
                            Text("Hey ther i'm using whatsApp")
                                .font(.system(size: 13 , weight: .medium))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }

                }
                .padding(.bottom)
            }
            .padding(.horizontal)

            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack(spacing: 16){
                        Button(action: {
                            dismiss()
                        }){
                            Image(systemName: "arrow.backward")
                        }
                        VStack(alignment: .leading, spacing: 5){
                            Text("Select Contact")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Text("2 contacts")
                                .font(.caption2)
                        }
                    }
                    .foregroundColor(.white)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 24){
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "ellipsis")
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                }

            }
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView()
    }
}
