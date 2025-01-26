//
//  FormatData.swift
//  ChatApp
//
//  Created by MacBookPro on 16/01/2025.
//

import Foundation


extension Date {
    
    private var dayFormatter : DateFormatter {
        let formatter  = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateFormat = "MM/dd/yy"
        return formatter
    }
    
    func chatTimesToString() -> String {
        if Calendar.current.isDateInToday(self){
            return "Today"
        } else if Calendar.current.isDateInYesterday(self) {
            return "Yesteday"
        }else {
            return dayFormatter.string(from : self)
        }
    }
}
