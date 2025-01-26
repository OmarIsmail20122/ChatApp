//
//  RegisterViewModel.swift
//  ChatApp
//
//  Created by MacBookPro on 21/01/2025.
//

import SwiftUI
import Foundation

class RegisterViewModel : ObservableObject {
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var fullName : String = ""
    @Published var phone : String = ""
    
    
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, fullName: fullName, phone: phone)
        print("Success")
    }
}
