//
//  LoginViewModel.swift
//  ChatApp
//
//  Created by MacBookPro on 21/01/2025.
//

import Foundation
import SwiftUI

class LoginViewModel : ObservableObject {
    @Published var email : String = ""
    @Published var password : String = ""
    
    func loginUser() async throws {
         try await AuthService.shared.login(email: email, password: password)
        print("Success")
    }
}
