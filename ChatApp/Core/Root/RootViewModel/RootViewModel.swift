//
//  RootViewModel.swift
//  ChatApp
//
//  Created by MacBookPro on 26/01/2025.
//

import Foundation
import FirebaseFirestoreSwift
import Combine
import FirebaseAuth


class RootViewModel : ObservableObject {
    @Published var userSession : FirebaseAuth.User?
    private var cancellable = Set<AnyCancellable>()
    
    init(){
        setupSubscription()
    }
    
    private func setupSubscription() {
        AuthService.shared.$userSession.sink{ [ weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellable)
    }
}
