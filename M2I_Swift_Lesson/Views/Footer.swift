//
//  Footer.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 08/10/2025.
//


Button(action: {
                    counter += 1
                    print("click")
                }) {
                    Text("Save infos")
                        .padding()
                        .background(.yellow)
                        .cornerRadius(50)
                }
                NavigationLink("2ème Page") {
                    CounterScreen()
                }