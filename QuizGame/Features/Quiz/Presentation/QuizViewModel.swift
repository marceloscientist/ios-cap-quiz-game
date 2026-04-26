//
//  QuizViewModel.swift
//  QuizGame
//
//  Created by Santana, Marcelo de Carvalho on 26/04/26.
//

import Foundation
import Combine

@MainActor
final class QuizViewModel: ObservableObject {

    @Published private(set) var themeTitle: String = ""
    @Published private(set) var questions: [QuizQuestion] = []
    @Published private(set) var currentIndex: Int = 0
    @Published private(set) var correctCount: Int = 0
    @Published private(set) var showFeedback: Bool = false
    @Published private(set) var lastWasCorrect: Bool = false
    @Published private(set) var correctAnswerText: String = ""

    var currentQuestion: QuizQuestion? {
        guard currentIndex < questions.count else { return nil }
        return questions[currentIndex]
    }

    func start(theme: String) {
        guard let selected = QuizSeedData.themes.first(where: { $0.title == theme }) else { return }
        themeTitle = selected.title
        questions = selected.questions
        currentIndex = 0
        correctCount = 0
        showFeedback = false
    }

    func answer(_ index: Int) {
        guard let q = currentQuestion else { return }
        lastWasCorrect = index == q.correctIndex
        if lastWasCorrect { correctCount += 1 }

        correctAnswerText = q.options[q.correctIndex]
        showFeedback = true
    }

    func next() {
        showFeedback = false
        currentIndex += 1
    }

    var isFinished: Bool { currentIndex >= questions.count }
    var incorrectCount: Int { questions.count - correctCount }
}
