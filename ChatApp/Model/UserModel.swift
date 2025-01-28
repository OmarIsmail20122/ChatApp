//
//  UserModel.swift
//  ChatApp
//
//  Created by MacBookPro on 05/01/2025.
//

import Foundation

struct UserModel : Codable , Identifiable ,Hashable {
    var id: String = UUID().uuidString
    let fullName:String
    let phoneNumber:String
    let email :String
    var profileImageUrl : String?
    
}

extension UserModel {
    static let MOK_DATA = UserModel(fullName: "OmarIsmail", phoneNumber: "+201016481694", email: "omar.bermawy2001@gmail.com" , profileImageUrl: nil)
}
