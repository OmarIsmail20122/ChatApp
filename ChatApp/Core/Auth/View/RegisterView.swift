//
//  RegisterView.swift
//  ChatApp
//
//  Created by MacBookPro on 21/01/2025.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var registerVM = RegisterViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                LogoImage()
                    FloatingField(title: "Email", placeholder: "", text: $registerVM.email)
                    FloatingField(title: "FullName", placeholder: "", text: $registerVM.fullName)
                    FloatingField(title: "Phone Number", placeholder: "", text: $registerVM.phone)
                    FloatingField(title: "Password", placeholder: "", text: $registerVM.password)
                        
                ButtonAuth(action: {
                    Task{ try await  registerVM.createUser() }
                }, title: "Sign Up")
                .padding(.top , 40)
                
                Spacer()
                Divider()
                HStack{
                  Text("Already have an account?")
                        .fontWeight(.medium)
                    
                    NavigationLink(destination: LoginView().navigationBarBackButtonHidden()){
                        Text("Sign In")
                    }
                }
                .padding(.vertical , 10)
                .foregroundStyle(.gray)
                .font(.subheadline)

            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}


struct LogoImage : View {
    var body: some View {
        Image("image.psd")
            .resizable()
            .scaledToFit()
            .frame(width: 150 , height:  150)
    }
}
