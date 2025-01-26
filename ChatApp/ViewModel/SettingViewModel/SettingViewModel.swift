//
//  SettingViewModel.swift
//  ChatApp
//
//  Created by MacBookPro on 26/01/2025.
//

import Foundation
import SwiftUI

class SettingViewModel : ObservableObject {
    @Published var toolbarVisibility : Visibility = .hidden
    
    func logout() {
        AuthService.shared.logout()
    }

}
