//
//  CounterModel.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 08/10/2025.
//

import SwiftUI

class CounterModel : ObservableObject {
    @Published var counter: Int
    
    init() {
        self.counter = 0
    }
}
