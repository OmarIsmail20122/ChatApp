//
//  ToolbarItemComponets.swift
//  ChatApp
//
//  Created by Mac on 17/12/2024.
//

import SwiftUI

struct ToolbarItemComponets: View {
  fileprivate  func ToolbarItemComponentsTitle() -> ToolbarItem<(), some View> {
       return ToolbarItem(placement: .navigationBarLeading){
           Text("WhatsApp")
               .font(.title)
               .fontWeight(.semibold)
//               .navigationBarColor(backColor: Color(.darkGray))
           
       }
   }
    fileprivate func ToolbarItemComponentsButtons() -> ToolbarItem<(), some View> {
        return ToolbarItem(placement: .navigationBarTrailing){
            HStack(spacing: 24){
                Image(systemName: "camera")
                Image(systemName: "magnifyingglass")
                Image(systemName: "ellipsis")
            }
            .fontWeight(.semibold)
        }
    }
    
    var body: some View {
        ZStack{
            
        }.toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Text("WhatsApp")
                    .font(.title)
                    .fontWeight(.semibold)
                    .navigationBarColor(backColor: Color(.darkGray))
                
            }
                
            ToolbarItem(placement: .navigationBarTrailing){
                HStack(spacing: 24){
                    Image(systemName: "camera")
                    Image(systemName: "magnifyingglass")
                    Image(systemName: "ellipsis")
                }
                .fontWeight(.semibold)
            }
        }
    }
}

struct ToolbarItemComponets_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarItemComponets()
    }
}
