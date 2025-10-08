//
//  UserForm.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 08/10/2025.
//

import SwiftUI

struct UserForm : View {
    let user: User
    @State private var password: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    @FocusState private var passwordFieldIsFocused: Bool
    
    var body: some View {
        let emailB = Binding(
            get: { String(user.email) },
            set: { user.email = String($0) }
        )
        
        TextField(
            "Email (email address)",
            text: emailB
        )
        .focused($emailFieldIsFocused)
        .onSubmit {
        }
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .border(.secondary)
        .padding(EdgeInsets.init(top: 0, leading: 25, bottom: 0, trailing: 25))
        
        SecureField(
            "Password",
            text:$password
        )
        .focused($passwordFieldIsFocused)
        .onSubmit {
        }
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .border(.secondary)
        .padding(EdgeInsets.init(top: 0, leading: 25, bottom: 0, trailing: 25))
        
    }
}
