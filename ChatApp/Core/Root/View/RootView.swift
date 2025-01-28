//
//  RootView.swift
//  ChatApp
//
//  Created by MacBookPro on 26/01/2025.
//

import SwiftUI

struct RootView: View {
    @StateObject var rootVM = RootViewModel()
    var body: some View {
        Group{
            if rootVM.userSession != nil {
                InboxView()
            } else {
                WelcomeView()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
