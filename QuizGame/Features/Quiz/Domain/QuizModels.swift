//
//  QuizModels.swift
//  QuizGame
//
//  Created by Santana, Marcelo de Carvalho on 26/04/26.
//

import Foundation
import Combine

struct QuizQuestion: Identifiable, Equatable {
    let id: UUID = UUID()
    let prompt: String
    let options: [String]
    let correctIndex: Int
}

struct QuizTheme: Identifiable, Equatable {
    let id: String
    let title: String
    let questions: [QuizQuestion]
}
