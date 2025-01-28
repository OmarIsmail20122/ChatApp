//
//  MessageModel.swift
//  ChatApp
//
//  Created by MacBookPro on 16/01/2025.
//

import Foundation

struct MessageModel : Identifiable, Hashable,Codable {
    let fromId : String
    let toId : String
    let messageText : String
//    let timeStamp : TimeStamp
    let isImage : Bool
    let isAudio : Bool
    let isVideo : Bool
    let user :UserModel?
    var id = UUID().uuidString
}

struct MessageGroupModel : Identifiable ,Hashable , Codable{
    var id = UUID().uuidString
    var messages : [MessageModel]
    let data  : Date
}

extension MessageGroupModel {
    static var MOCK_GROUP_MESSAGE = [MessageGroupModel(messages: [MessageModel(fromId: "", toId: "", messageText: "Hello My Dear", isImage: false, isAudio: false, isVideo: false, user: nil) , MessageModel(fromId: "", toId: "", messageText: "Hello Baby", isImage: false, isAudio: false, isVideo: false, user: nil) , MessageModel(fromId: "", toId: "", messageText: "How are you", isImage: false, isAudio: false, isVideo: false, user: nil) , MessageModel(fromId: "", toId: "", messageText: "Fine", isImage: false, isAudio: false, isVideo: false, user: nil)], data: Date())]
}
