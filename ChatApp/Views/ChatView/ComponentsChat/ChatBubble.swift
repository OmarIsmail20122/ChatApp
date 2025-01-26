//
//  ChatBubble.swift
//  ChatApp
//
//  Created by MacBookPro on 06/01/2025.
//

import SwiftUI

struct ChatBubble : Shape {
    let isFromCurrentUser : Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topRight , .topLeft ,isFromCurrentUser ? .bottomLeft : .bottomRight] , cornerRadii: CGSize(width: 14, height: 14))
        
        return Path(path.cgPath)
    }
}
