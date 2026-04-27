import SwiftUI

struct QuizFlowView: View {
    let theme: String
    @StateObject private var vm = QuizViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {

            if vm.isFinished {

                QuizResultView(
                    correct: vm.correctCount,
                    incorrect: vm.incorrectCount
                )

            } else if let q = vm.currentQuestion {

                // ProgressBar reutilizável
                QuizProgressBar(
                    currentIndex: vm.currentIndex,
                    total: vm.questions.count
                )
                
                // Pergunta
                Text(q.prompt)
                    .font(.title3)
                    .bold()

                // Opções
                ForEach(q.options.indices, id: \.self) { idx in
                    Button(q.options[idx]) {
                        if !vm.showFeedback {
                            vm.answer(idx)
                        }
                    }
                    .buttonStyle(PrimaryButtonStyle())
                    .disabled(vm.showFeedback)
                }

                // Feedback
                if vm.showFeedback {
                    Text(
                        vm.lastWasCorrect
                        ? "✅ Correto!"
                        : "❌ Incorreto! Correta: \(vm.correctAnswerText)"
                    )
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
        .onAppear {
            vm.start(theme: theme)
        }
    }
}
