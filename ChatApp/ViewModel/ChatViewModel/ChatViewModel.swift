//
//  ChatViewModel.swift
//  ChatApp
//
//  Created by MacBookPro on 05/01/2025.
//

import Foundation
import SwiftUI

class ChatViewModel : ObservableObject {
    @Published var messageText : String = ""
    
    @Published var tabbarVisiblity : Visibility = .hidden
}
