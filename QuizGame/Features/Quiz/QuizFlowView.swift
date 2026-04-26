//
//  QuizPlaceholderView.swift
//  QuizGame
//
//  Created by Santana, Marcelo de Carvalho on 26/04/26.
//

import SwiftUI

struct QuizFlowView: View {
    let theme: String
    @StateObject private var vm = QuizViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            if vm.isFinished {
                QuizResultView(correct: vm.correctCount, incorrect: vm.incorrectCount)
            } else if let q = vm.currentQuestion {
                Text(q.prompt)
                    .font(.title3).bold()

                ForEach(q.options.indices, id: \.self) { idx in
                    Button(q.options[idx]) {
                        if !vm.showFeedback {
                            vm.answer(idx)
                        }
                    }
                    .buttonStyle(PrimaryButtonStyle())
                    .disabled(vm.showFeedback)
                }

                if vm.showFeedback {
                    Text(vm.lastWasCorrect ? "✅ Correto!" : "❌ Incorreto! Correta: \(vm.correctAnswerText)")
                        .foregroundStyle(vm.lastWasCorrect ? .green : .red)

                    Button("Próxima") {
                        vm.next()
                    }
                    .buttonStyle(PrimaryButtonStyle())
                }
            }

            Spacer()
        }
        .padding()
        .navigationTitle(theme)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear { vm.start(theme: theme) }
    }
}
