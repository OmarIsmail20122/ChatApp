//
//  WelcomeView.swift
//  ChatApp
//
//  Created by MacBookPro on 21/01/2025.
//

import SwiftUI

struct WelcomeView: View {
    @StateObject private var welcomeVM = WelcomeViewModel()
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
                VStack{
                    HStack{
                        Spacer()
                        Image(systemName: "ellipsis")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.darkGray))
                    .padding()
                    
                    Image("welcome_image")
                        .resizable()
                        .frame(width: geometry.size.width - 80 , height: geometry.size.width - 60)
                    TitleWelcomeView()
                    ButtonLanguage(width: geometry.size.width - 180)
                    Spacer()
                    AgreeButton(width: geometry.size.width  - 40, welcomeVM: welcomeVM)
                    
                    
                }
                
            }
            .padding()
            .fullScreenCover(isPresented: $welcomeVM.showLoginView, content: {
                LoginView()
            })
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}



