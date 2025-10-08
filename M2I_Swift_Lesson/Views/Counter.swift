//
//  Counter.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 07/10/2025.
//

import SwiftUI

struct Counter: View {
    let text: String
    let counter: Int
    
    var body: some View {
        Text("\(text) \(counter)")
    }
}
