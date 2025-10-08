//
//  ContentView.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 01/10/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0
    @State private var username: String = ""
    @State private var password: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    @FocusState private var passwordFieldIsFocused: Bool
    private var user: User = User()
    
    
    var body: some View {
        
        let emailB = Binding(
            get: { String(user.email) },
            set: { user.email = String($0) }
        )
        VStack {
            HStack {
                Spacer()
                Image(user.pdp)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image(user.pdp)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image(user.pdp)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Spacer()
                Counter(text: "Counter:", counter: counter)
                Spacer()
                Button(action: {
                    user.email = user.CapitalizeEmail();
                    user.password = user.CapitalizePassword();
                    print("\(user.email)")
                }) {
                    Text("Invite & earn")
                        .padding()
                        .background(.yellow)
                        .cornerRadius(50)
                }
                Spacer()
            }
            .frame(height: 75)
            
            Image(user.pdp)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            Text("Antonin Do Souto")
                .font(.title)
            Text("\(user.email)")
                .font(.title)
            Text("\(user.password)")
                .font(.title)
            Spacer()
            
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
            Spacer()
            Button(action: {
                counter += 1
                print("click")
            }) {
                Text("Save infos")
                    .padding()
                    .background(.yellow)
                    .cornerRadius(50)
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
