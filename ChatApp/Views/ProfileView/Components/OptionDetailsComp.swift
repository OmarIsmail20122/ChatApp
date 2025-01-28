//
//  OptionDetailsComp.swift
//  ChatApp
//
//  Created by MacBookPro on 16/01/2025.
//

import SwiftUI

struct OptionDetailsComp: View {
    private var image : String
    private var title : String
    private var subtitle : String
    private var isEditable : Bool = false
    private var secondSubtitle : String = ""
    
    init(image: String, title: String, subtitle: String) {
        self.image = image
        self.title = title
        self.subtitle = subtitle
    }
    
    init(image: String, title: String, subtitle: String, isEditable: Bool , secondSubtitle: String) {
        self.image = image
        self.title = title
        self.subtitle = subtitle
        self.isEditable = isEditable
        self.secondSubtitle = secondSubtitle
    }
    var body: some View {
        HStack (alignment :secondSubtitle != "" ? .top : .center ,spacing: 24){
            Image(systemName: image)
                .resizable()
                .frame(width: 20 , height:  20)
                .foregroundColor(.gray)
                .padding(.top , secondSubtitle != "" ? 12 : 0)
            VStack(alignment: .leading , spacing: 10){
                Text(title)
                    .foregroundColor(Color(.gray))
                    .font(.headline)
                Text(subtitle)
                    .foregroundColor(.black)
                    .font(.footnote)
                
                if secondSubtitle != "" {
                    Text(secondSubtitle)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.top ,1)
                }
            }
            Spacer()
            if isEditable {
                Image(systemName: "pencil")
                    .resizable()
                    .frame(width: 20 , height:  20)
                    .scaledToFill()
                    .foregroundColor(.gray)
            }
           
                
        }
    }
}

