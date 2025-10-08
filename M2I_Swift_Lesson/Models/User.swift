//
//  User.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 07/10/2025.
//

import Foundation


class User {
    @Published var email: String = "test@test.test"
    var password: String = "Mot de passe"
    var pdp: String = "lizzard"
    
    public func CapitalizeEmail() -> String {
        return email.capitalized;
    }
    
    public func CapitalizePassword() -> String {
        return password.capitalized;
    }
}
