//
//  MainTabbarView.swift
//  ChatApp
//
//  Created by Mac on 17/12/2024.
//

import SwiftUI

struct MainTabbarView: View {
    @State private var currentIndex : Int = 0
    fileprivate func TabbarItems<Content: View>(imageName : String , view : Content , index : Int , displayText : String) -> some View {
         view
            .tabItem{
                VStack{
                    Image(systemName: imageName)
                        .environment(\.symbolVariants, currentIndex == index ? .fill : .none)
                    Text(displayText)
                        .font(.system(size: 16 , weight: .medium , design: .default))
                }
            }
    }
    
    var body: some View {
        TabView{
            TabbarItems(imageName: "message.fill", view: InboxView(),  index: 0, displayText: "Chat")
            TabbarItems(imageName: "circle.dashed.inset.filled", view: UpdatesView() , index: 1, displayText: "Updates")
            TabbarItems(imageName: "person.3.fill", view: CommunityView(), index: 2, displayText: "Communities")
            TabbarItems(imageName:"phone.fill", view: CallView(), index: 3, displayText: "Calls")
        }
        .toolbarBackground(
                Color.yellow,
                for: .tabBar)
        .tint(Color("darkMode"))
    }
}

struct MainTabbarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabbarView()
    }
}
