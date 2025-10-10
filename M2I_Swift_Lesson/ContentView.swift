//
//  ContentView.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 01/10/2025.
//

import SwiftUI
import Firebase

struct ContentView: View {
    private let db: Firestore
    private var user: User = User()
    @State var isShown: Bool = false
    @StateObject private var counterModel: CounterModel = CounterModel()
    
    init() {
        db = Firestore.firestore()
    }
    
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
                    Task {
                        await addDataDb()
                    }
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
    
    func addDataDb() async {
        let ref = db.collection("users").addDocument(data: [
          "first": "Ada2",
          "last": "Lovelace2",
          "born": 18152
        ])
        let doc = db.collection("users").document(ref.documentID)
        print("Document added with ID: \(ref.documentID)")
        do {
            let x = try await doc.getDocument().data()
            print(x)
        }catch {
            print("Erreur : \(error)")
        }
    }
}
