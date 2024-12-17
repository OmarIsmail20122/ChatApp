//
//  LoginView.swift
//  ChatApp
//
//  Created by Mac on 16/12/2024.
//

import SwiftUI


struct LoginView: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack{                       
                    Text("Welcome to our community")
                        .font(.system(size: 24 , weight: .heavy , design: .monospaced))
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
