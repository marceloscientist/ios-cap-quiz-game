import SwiftUI

struct ThemeSelectionView: View {
    private let themes = ["História", "Física", "Geografia", "Matemática"]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Selecione um tema")
                .font(.title2).bold()

            ForEach(themes, id: \.self) { theme in
                NavigationLink(theme) {
                    QuizFlowView(theme: theme)
                }
                .buttonStyle(PrimaryButtonStyle())
            }

            Spacer()
        }
        .padding()
    }
}
