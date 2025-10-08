//
//  ContentView.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 01/10/2025.
//

import SwiftUI

struct ContentView: View {
    private var user: User = User()
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
                }) {
                    Text("Invite & earn")
                        .padding()
                        .background(.yellow)
                        .cornerRadius(50)
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
