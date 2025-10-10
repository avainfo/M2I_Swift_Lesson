//
//  Todo.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 10/10/2025.
//

import SwiftUI

struct Todo : Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
