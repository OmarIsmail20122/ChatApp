//
//  ProfileViewModel.swift
//  ChatApp
//
//  Created by MacBookPro on 16/01/2025.
//

import Foundation
import SwiftUI
import PhotosUI


class ProfileViewModel : ObservableObject {
    @Published var toolbarVisibility : Visibility = .hidden
    @Published var showImagePicker : Bool = false
    @Published var profileImage : Image?
    @Published var selectedImage : PhotosPickerItem? {
        didSet {
            Task { try await loadImage(withItem: selectedImage)}
        }
    }
    
  private func loadImage(withItem item : PhotosPickerItem?)async throws {
        guard let item =  item else  { return }
        guard let data = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        self.profileImage = Image(uiImage: uiImage)
      try await updateProfileImage(uiImage: uiImage)
    }
    
    private func updateProfileImage(uiImage : UIImage)async throws {
        guard let imageProfile = try await ImageUploader.uploadProfileImage(uiImage: uiImage) else { return }
        try await UserSrvice.shared.updateProfileUserImage(withimageUrl: imageProfile)
    }
}
