//
//  Item.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 01/10/2025.
//

import Foundation

final class Item: Identifiable {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
