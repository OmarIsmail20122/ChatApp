//
//  AuthService.swift
//  ChatApp
//
//  Created by MacBookPro on 26/01/2025.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift


class AuthService {
    @Published var userSession : FirebaseAuth.User?
    static var shared  = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func createUser(email : String , password : String , fullName : String , phone : String ) async throws {
        let result = try await Auth.auth().createUser(withEmail: email, password: password)
        self.userSession = result.user
        try await uploadData(email: email, fullName: fullName, phone: phone, id: result.user.uid)
    }
    
    private func uploadData(email : String , fullName : String , phone : String , id : String) async throws {
        let user = UserModel(id: id, fullName: fullName, phoneNumber: phone, email: email)
        guard let encoderUser = try? Firestore.Encoder().encode(user) else { return }
        try await Firestore.firestore().collection("users").document(id).setData(encoderUser)
    }
    
    @MainActor
    func login(email : String , password : String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            loadUserData()
        } catch {
            print("Faild to login \(error.localizedDescription)")
        }
    }
    
    private func loadUserData()  {
        Task {
            try await UserSrvice.shared.fetchCurrentUser()
        }
    }
    
    func logout () {
      try?  Auth.auth().signOut()
        self.userSession = nil
        UserSrvice.shared.currentUser = nil
    }
}