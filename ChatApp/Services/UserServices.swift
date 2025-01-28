//
//  UserServices.swift
//  ChatApp
//
//  Created by MacBookPro on 26/01/2025.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class UserSrvice {
    @Published var currentUser : UserModel?
    static var shared  = UserSrvice()
    
    init() {
        Task { try await fetchCurrentUser() }
    }
    
    @MainActor
    func fetchCurrentUser () async throws {
        do {
            guard let uid = Auth.auth().currentUser?.uid else { return }
            let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
            currentUser = try  snapshot.data(as: UserModel.self)
            print(snapshot)
        }catch {
            print("Faild to featch UserData")
        }
    }
    
    @MainActor
    func updateProfileUserImage (withimageUrl imageUrl : String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        try await Firestore.firestore().collection("users").document(uid).updateData(["profileImage" : imageUrl])
        self.currentUser?.profileImageUrl = imageUrl
    }
}
