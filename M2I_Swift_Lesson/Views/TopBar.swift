//
//  TopBar.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 08/10/2025.
//

import SwiftUI

struct TopBar : View {
    let user: User;
    var counter: Int
    
    
    var body: some View {
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
                Task {
                    await getTodo()
                    print("Donné récupéré")
                }
                print("test")
            }) {
                Text("Invite & earn")
                    .padding()
                    .background(.yellow)
                    .cornerRadius(50)
            }
            Spacer()
        }
        .frame(height: 75)
    }
    
    func getTodo() async -> Void {
        let url: URL = URL(string: "https://jsonplaceholder.typicode.com/todos/15")!
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let todo: Todo = try JSONDecoder().decode(Todo.self, from: data)
            print(todo.title)
        } catch {
            print("Erreur sur la requete")
        }
    }
}
