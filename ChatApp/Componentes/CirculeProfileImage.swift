//
//  CirculeProfileImage.swift
//  ChatApp
//
//  Created by MacBookPro on 05/01/2025.
//
import SwiftUI

enum SizeImageProfile {
    case xxSmale
    case xSmale
    case smale
    case medium
    case larg
    case xLarge
    
    var dimintion : CGFloat {
        switch self {
        case .xxSmale:
           return 28
        case .xSmale:
           return 32
        case .smale:
           return 40
        case .medium:
           return 56
        case .larg:
           return 80
        case .xLarge:
           return 120
        }
    }
}

struct CirculeProfileImage: View {
    private let size : SizeImageProfile
    var userModel : UserModel?
    
    init(size: SizeImageProfile , userModel : UserModel?) {
        self.size = size
        self.userModel  = userModel
    }
    var body: some View {
        /// Handling If Profile image is nil or not if nil Using Else if not nil using profile Image
        if let profileImage = userModel?.profileImageUrl {
            Image(profileImage)
                .resizable()
                .frame(width: size.dimintion , height: size.dimintion)
                .scaledToFill()
                .clipShape(Circle())
        }
        else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimintion , height: size.dimintion)
                .scaledToFill()
                .foregroundColor(Color(.systemGray4))
                .clipShape(Circle())
        }
    }
}

struct CirculeProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        CirculeProfileImage(size: .medium, userModel: nil)
    }
}
