//
//  InboxView.swift
//  ChatApp
//
//  Created by Mac on 17/12/2024.
//

import SwiftUI

struct InboxView: View {
    
    
    var body: some View {
        NavigationStack{
            ZStack(alignment: .bottomTrailing){
                List{
                    ForEach(0 ..< 5){ _ in
                        HStack(spacing:20){
                            
                        Image("coffe")
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing:10){
                                Text("OmarIsmail")
                                    .foregroundColor(Color("darkMode"))
                                    .font(.system(size: 16 ))
                                    .font(.title3)
                                Text("Hello Omar")
                                    .font(.system(size: 13 , weight: .bold))
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            
                            Text("04/05/2024")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
                ButtonItemsTralling(imageName: "plus.bubble.fill")
            }.toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Text("WhatsApp")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .navigationBarColor(backColor: Color(.darkGray))
                    
                }
                    
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 24){
                        Image(systemName: "camera")
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "ellipsis")
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
