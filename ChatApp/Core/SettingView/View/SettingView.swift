//
//  SettingView.swift
//  ChatApp
//
//  Created by MacBookPro on 16/01/2025.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject var settingVM = SettingViewModel()
    var body: some View {
        ScrollView{
            VStack(alignment:.leading , spacing: 20){
                NavigationLink(destination: ProfileView().navigationBarBackButtonHidden(), label: {
                    HStack(spacing: 20){
                        CirculeProfileImage(size: .larg, userModel: UserModel.MOK_DATA)
                        VStack(alignment: .leading , spacing: 5){
                            Text(UserModel.MOK_DATA.fullName)
                                .foregroundColor(.black)
                                .font(.headline)
                                .fontWeight(.semibold)
                            
                            Text("I'm using this app")
                                .font(.footnote)
                                .foregroundColor(.gray)
                            
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.top , 15)
                })
                Divider()
                    .padding(.bottom , 10)
                    .padding(.top , 5)
                VStack(alignment: .leading ,spacing:24){
                    ForEach(SettingsOptions.allCases) { options in
                        Button(action: {
                            if options == .logout {
                              settingVM.logout()
                            }
                        }){
                            HStack(spacing : 24){
                                Image(systemName: options.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:  25 ,height: 25)
                                    .foregroundColor(Color(.darkGray))
                                VStack(alignment: .leading, spacing: 5){
                                    Text(options.title)
                                        .foregroundColor(.black)
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                    if options.subtitle != "" {
                                        Text(options.subtitle)
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack(spacing: 10){
                        Button(action: {
                            settingVM.toolbarVisibility = .visible
                            dismiss()
                        }){
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                        }
                            Text("Settings")
                            .font(.system(size: 20, weight: .semibold))
                                .foregroundColor(.white)
                    }
                    .foregroundColor(.white)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 24){
                       
                        Image(systemName: "magnifyingglass")
//                        NavigationLink(destination: SettingView().navigationBarBackButtonHidden(), label: {
//                            Image(systemName: "ellipsis")
//                        })
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
