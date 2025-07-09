//  Validation.swift
//  Restaurant
//  Created by Weeraphot Bumbaugh on 7/7/25.

import Foundation

struct Validation{
    
    struct ValidationResult {
        let isValid: Bool
        let message: String
    }
    
    static func isValidName(_ name: String)->ValidationResult{
        if name.count == 0{
            return ValidationResult(isValid: false, message: "Please enter your name.")
        }
        return ValidationResult(isValid: true, message: "")
    }
    
    static func isGuestCountInfo(_ guestCount: Int)->ValidationResult{
        if guestCount > 8 {
            return ValidationResult(isValid: true, message: "For parties larger than 8, we will call to confirm.")
        }else if guestCount >= 5 {
            return ValidationResult(isValid: true, message: "For large parties, please arrive 10 minutes early.")
        }
        return ValidationResult(isValid: true, message: "")
    }
    
    static func isValidDate(_ reservationDate: Date)->ValidationResult{
        // This is the current date, for comparison
        let now = Date()
        
        if reservationDate < now {
            return ValidationResult(isValid: false, message: "Please select a valid date and time.")
        }
        
        let minimumLeadTime: TimeInterval = 60 * 60 // 1 hour
        if reservationDate.timeIntervalSinceNow < minimumLeadTime {
            return ValidationResult(isValid: false, message: "Reservations must be made at least 1 hour in advance.")
        }
        
        return ValidationResult(isValid: true, message: "")
    }
    
    
    
}
