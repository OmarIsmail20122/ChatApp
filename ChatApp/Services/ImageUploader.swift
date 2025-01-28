//
//  ImageUploader.swift
//  ChatApp
//
//  Created by MacBookPro on 27/01/2025.
//

import Foundation
import FirebaseStorage
import Firebase
import UIKit

struct ImageUploader {
    
    static func uploadProfileImage (uiImage : UIImage) async throws -> String? {
        guard let imageData = uiImage.jpegData(compressionQuality: 0.25) else { return nil }
        let storageRef = Storage.storage().reference(withPath: "/profileImage/\(UUID().uuidString)")
        
        do {
            _ = try await storageRef.putDataAsync(imageData)
            let url = try await storageRef.downloadURL()
            return url.absoluteString
        }catch {
            print("Error when upload profile image \(error.localizedDescription)")
            return nil
        }
    }
}
