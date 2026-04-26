//
//  QuizSeedData.swift
//  QuizGame
//
//  Created by Santana, Marcelo de Carvalho on 26/04/26.
//

import Foundation

enum QuizSeedData {
    static let themes: [QuizTheme] = [
        QuizTheme(
            id: "historia",
            title: "História",
            questions: [
                .init(prompt: "Em que ano ocorreu a Proclamação da República no Brasil?",
                      options: ["1822", "1889", "1930", "1964"],
                      correctIndex: 1),
                .init(prompt: "Quem foi o primeiro presidente do Brasil?",
                      options: ["Deodoro", "Getúlio", "JK", "Floriano"],
                      correctIndex: 0),
                .init(prompt: "Qual civilização construiu as pirâmides de Gizé?",
                      options: ["Gregos", "Romanos", "Egípcios", "Maias"],
                      correctIndex: 2),
                .init(prompt: "A Segunda Guerra Mundial terminou em:",
                      options: ["1918", "1939", "1945", "1961"],
                      correctIndex: 2),
                .init(prompt: "O Descobrimento do Brasil foi em:",
                      options: ["1500", "1600", "1400", "1550"],
                      correctIndex: 0)
            ]
        ),
        QuizTheme(
            id: "matematica",
            title: "Matemática",
            questions: [
                .init(prompt: "Quanto é 7 × 8?",
                      options: ["54", "56", "64", "58"],
                      correctIndex: 1),
                .init(prompt: "Quanto é 9 + 6?",
                      options: ["12", "13", "15", "16"],
                      correctIndex: 2),
                .init(prompt: "Quanto é 12 ÷ 3?",
                      options: ["2", "3", "4", "6"],
                      correctIndex: 2),
                .init(prompt: "Qual é o valor de π (aprox.)?",
                      options: ["2,14", "3,14", "4,13", "1,34"],
                      correctIndex: 1),
                .init(prompt: "Quanto é 5²?",
                      options: ["10", "20", "25", "30"],
                      correctIndex: 2)
            ]
        )
        // depois você completa Física/Geografia
    ]
}
