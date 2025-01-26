//
//  TitleWelcomeView.swift
//  ChatApp
//
//  Created by MacBookPro on 21/01/2025.
//

import SwiftUI

struct TitleWelcomeView: View {
    var body: some View {
        VStack(spacing:15){
            Text("Welcome WhatsApp")
                .font(.title2)
                .fontWeight(.semibold)
            Text("Read out")
                .foregroundColor(.gray) +
            Text(" Privacy Policy")
                .foregroundColor(.blue) +
            Text(". Tap Agree and continue to accept the")
                .foregroundColor(.gray) +
            Text(" Terms of Services")
                .foregroundColor(.blue)
        }
        .font(.subheadline)
        .padding(.bottom , 30)
        .padding(.top , 20)
    }
}

struct TitleWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        TitleWelcomeView()
    }
}
