//
//  AgreeButton.swift
//  ChatApp
//
//  Created by MacBookPro on 21/01/2025.
//

import SwiftUI

struct AgreeButton : View {
    private var width : CGFloat
    @StateObject private var wlecomVM : WelcomeViewModel
    
    init(width : CGFloat , welcomeVM : WelcomeViewModel ){
        self.width = width
        self._wlecomVM = StateObject(wrappedValue: welcomeVM)
        
    }
    var body: some View {
        Button(action: {
            wlecomVM.showLoginView.toggle()
        }) {
            Text("Agree and continue")
                    .font(.subheadline)
                    .fontWeight(.semibold)
           
        }
        .foregroundColor(Color(.white))
        .frame(width: width, height: 45)
        .background(Color(.gray).opacity(2))
        .cornerRadius(30)
        
    }
    
}


struct ButtonLanguage : View {
    private var width : CGFloat
    
    init(width : CGFloat) {
        self.width = width
    }
    var body: some View {
        Button(action: {}){
            HStack(spacing : 20){
                Image(systemName: "network")
                    .resizable()
                    .frame(width:30 , height :30)
                Text("English")
                    .font(.title3)
                Image(systemName: "chevron.down")
                    .resizable()
                    .frame(width: 20 , height :10)
            }
            .foregroundColor(Color(.darkGray))
        }
        .frame(width: width, height: 45)
        .background(Color(.gray).opacity(0.3))
        .cornerRadius(30)
    }
}
