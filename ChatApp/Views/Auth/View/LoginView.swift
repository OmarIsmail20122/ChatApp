//
//  LoginView.swift
//  ChatApp
//
//  Created by Mac on 16/12/2024.
//

import SwiftUI


struct LoginView: View {
    @StateObject private var loginVM = LoginViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image("image.psd")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150 , height:  150)
                
                FloatingField(title: "Email", placeholder: "", text: $loginVM.email).padding(.vertical)
                FloatingField(title: "Password", placeholder: "", text: $loginVM.password)

                Text("Forgot Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity , alignment: .trailing)
                    .padding(.top , 20)
                    .padding(.trailing , 28)
                    .padding(.bottom ,20)
                
                ButtonAuth(action: {
                    Task { try await loginVM.loginUser() }
                }, title: "Login")
                Spacer()
                Divider()
                HStack{
                  Text("Don't have an account?")
                        .fontWeight(.medium)
                    NavigationLink(destination: RegisterView().navigationBarBackButtonHidden()){
                        Text("Sign Up")
                    }
                }
                .padding(.vertical , 10)
                .foregroundStyle(.gray)
                .font(.footnote)

            }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}




