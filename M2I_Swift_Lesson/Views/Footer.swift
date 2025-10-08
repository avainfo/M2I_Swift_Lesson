//
//  Footer.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 08/10/2025.
//

import SwiftUI

struct Footer : View {
    var counterModel: CounterModel

    var body: some View {
        Button(action: {
            counterModel.counter += 1
        }) {
            Text("Save infos")
                .padding()
                .background(.yellow)
                .cornerRadius(50)
        }
        NavigationLink("2ème Page") {
            CounterScreen()
        }
        
    }
}
