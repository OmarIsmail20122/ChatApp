//
//  SettingOptionsModel.swift
//  ChatApp
//
//  Created by MacBookPro on 16/01/2025.
//

import Foundation
import SwiftUI

enum SettingOptions : Int, Identifiable,CaseIterable{
    var id: Int { return self.rawValue }
    case account
    case privacys
    case avatar
    case chats
    case notifications
    case storageAndData
    case appLanguage
    case help
    case inviteAFriends
    case logout
    
    var title : String {
        switch self {
        case .account:
            return "Account"
        case .privacys:
            return "Privacy"
        case .avatar:
            return "Avatar"
        case .chats:
            return "Chats"
        case .notifications:
            return "Notifications"
        case .storageAndData:
            return "Storage and Data"
        case .appLanguage:
            return "App Language"
        case .help:
            return "Help"
        case .inviteAFriends:
            return "Invite a friends"
        case .logout:
            return "Logout"
        }
    }
    
    var subtitle : String {
        switch self {
        case .account:
           return "Security notifications, change number"
        case .privacys:
            return "Block contacts, disappering message"
        case .avatar:
            return "create, edite profile photo"
        case .chats:
            return "Theme wallpapers, chat history"
        case .notifications:
            return "Message,group & call tones"
        case .storageAndData:
            return "Network usage, auto-download"
        case .appLanguage:
            return "English (device's language)"
        case .help:
            return "help center, contact us, privacy policy"
        case .inviteAFriends:
            return ""
        case .logout:
            return ""
        }
    }
    
    var image : String {
        switch self {
        case .account:
            return "key.fill"
        case .privacys:
            return "lock.fill"
        case .avatar:
            return "face.smiling.inverse"
        case .chats:
            return "text.bubble.fill"
        case .notifications:
            return "bell.fill"
        case .storageAndData:
            return "circle.dashed.inset.filled"
        case .appLanguage:
            return "map.circle.fill"
        case .help:
            return "questionmark.circle"
        case .inviteAFriends:
            return "person.2.fill"
        case .logout:
            return "rectangle.portrait.and.arrow.right.fill"
        }
    }
    
}
