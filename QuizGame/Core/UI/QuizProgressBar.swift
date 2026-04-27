import SwiftUI

struct QuizProgressBar: View {
    let currentIndex: Int   // 0-based
    let total: Int

    private var progress: Double {
        guard total > 0 else { return 0 }
        return Double(currentIndex) / Double(total)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {

            Text("Pergunta \(currentIndex + 1) de \(total)")
                .font(.footnote)
                .foregroundStyle(.secondary)

            GeometryReader { geo in
                ZStack(alignment: .leading) {

                    Capsule()
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 8)

                    Capsule()
                        .fill(Color.green)
                        .frame(
                            width: geo.size.width * progress,
                            height: 8
                        )
                        .animation(.easeInOut(duration: 0.3), value: progress)
                }
            }
            .frame(height: 8)
        }
    }
}
