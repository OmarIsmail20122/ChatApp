//
//  ProfileView.swift
//  ChatApp
//
//  Created by MacBookPro on 16/01/2025.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject private var profileVM = ProfileViewModel()
    var body: some View {
        VStack{
            Button(action: {
                profileVM.showImagePicker.toggle()
            }){
                ZStack(alignment: .bottomTrailing){
                    ZStack{
                        CirculeProfileImage(size: .xLarge, userModel:UserModel.MOK_DATA)
                        if let profileImage = profileVM.profileImage {
                            profileImage
                                .resizable()
                                .frame(width: 120 , height: 120)
                                .scaledToFill()
                                .clipShape(Circle())
                        }
                    }
                    Circle()
                        .foregroundColor(Color(.darkGray))
                        .frame(width:  40 , height: 40)
                        .overlay{
                            Image(systemName: "camera.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 25 , height: 25)
                        }                        
                }
            }
            .padding(.vertical , 40)
            
            VStack(spacing: 32){
                OptionDetailsComp(image: "person.fill", title: "Name", subtitle: UserModel.MOK_DATA.fullName , isEditable: true, secondSubtitle: "This is not your name or pin. This name will be visiable on Whatsapp contatcs")
                OptionDetailsComp(image: "exclamationmark.circle", title: "About", subtitle:"I'm using this app", isEditable: true, secondSubtitle: "")
                OptionDetailsComp(image: "phone.fill", title: "Phone Number", subtitle: UserModel.MOK_DATA.phoneNumber )
            }
            .padding(.leading)
            .padding(.trailing)
            Spacer()
            
        }
        .toolbar(profileVM.toolbarVisibility, for: .tabBar)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                HStack(spacing: 10){
                    Button(action: {
                        profileVM.toolbarVisibility = .visible
                        dismiss()
                    }){
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                    }
                        Text("Profile")
                        .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.white)
                }
                .foregroundColor(.white)
            }
        }
        .photosPicker(isPresented: $profileVM.showImagePicker, selection: $profileVM.selectedImage)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
