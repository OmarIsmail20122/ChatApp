//
//  CircleImageForNewMessageView.swift
//  ChatApp
//
//  Created by MacBookPro on 05/01/2025.
//

import SwiftUI

struct CircleImageForNewMessageView: View {
    let imageName : String
    let title : String
    var body: some View {
        HStack{
            Image(systemName:imageName)
                .resizable()
                .scaledToFit()
                .frame(width:30 , height: 30 )
                .foregroundColor(.gray)
    
            Text(title)
                .font(.subheadline)
                .fontWeight(.bold)
            Spacer()
        }
    }
}

struct CircleImageForNewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageForNewMessageView(imageName: "", title: "")
    }
}
