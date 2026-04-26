//
//  RootView.swift
//  QuizGame
//
//  Created by Santana, Marcelo de Carvalho on 26/04/26.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            ThemeSelectionView()
                .navigationBarTitle("Jogos de Perguntas!")
        }
    }
}
