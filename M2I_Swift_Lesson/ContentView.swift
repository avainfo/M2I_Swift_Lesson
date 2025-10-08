//
//  ContentView.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 01/10/2025.
//

import SwiftUI

struct ContentView: View {
    private var user: User = User()
    @State var isShown: Bool = false
    @StateObject private var counterModel: CounterModel = CounterModel()
    
    
    var body: some View {
        
        NavigationStack {
            VStack {
                TopBar(user: user, counter: counterModel.counter)
                
                UserInfo(user: user)
                Spacer()
                UserForm(user: user)
                Spacer()
                Footer(counterModel: counterModel)
                Button(action: {
                    print(counterModel.counter)
                    isShown = true
                }) {
                    Text("Invite & earn")
                        .padding()
                        .background(.yellow)
                        .cornerRadius(50)
                }
                .alert("Test", isPresented: $isShown) {
                    Button("OK", role: .cancel) { }
                    Button("Refuser", role: .destructive) { }

//                    if #available(iOS 26.0, *) {
//                        Button(role: .cancel, action: {isShown = false})
//                    } else {
//                        // Fallback on earlier versions
//                    }
//                    if #available(iOS 26.0, *) {
//                        Button(role: .destructive, action: {isShown = false})
//                    } else {
//                        // Fallback on earlier versions
//                    }
                }
                Spacer()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
