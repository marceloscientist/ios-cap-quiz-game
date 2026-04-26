//
//  QuizResultView.swift
//  QuizGame
//
//  Created by Santana, Marcelo de Carvalho on 26/04/26.
//

import SwiftUI

struct QuizResultView: View {
    let correct: Int
    let incorrect: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Resultado final")
                .font(.title2).bold()

            Text("✅ Acertos: \(correct)")
            Text("❌ Erros: \(incorrect)")

            Text("Volte e escolha um novo tema.")
                .foregroundStyle(.secondary)
        }
    }
}
