//
//  QuizSeedData.swift
//  QuizGame
//
//  Created by Santana, Marcelo de Carvalho on 26/04/26.
//

import Foundation

enum QuizSeedData {

    static let themes: [QuizTheme] = [

        // MARK: - História
        QuizTheme(
            id: "historia",
            title: "História",
            questions: [
                .init(
                    prompt: "Em que ano ocorreu a Proclamação da República no Brasil?",
                    options: ["1822", "1889", "1930", "1964"],
                    correctIndex: 1
                ),
                .init(
                    prompt: "Quem foi o primeiro presidente do Brasil?",
                    options: ["Deodoro", "Getúlio", "JK", "Floriano"],
                    correctIndex: 0
                ),
                .init(
                    prompt: "Qual civilização construiu as pirâmides de Gizé?",
                    options: ["Gregos", "Romanos", "Egípcios", "Maias"],
                    correctIndex: 2
                ),
                .init(
                    prompt: "A Segunda Guerra Mundial terminou em:",
                    options: ["1918", "1939", "1945", "1961"],
                    correctIndex: 2
                ),
                .init(
                    prompt: "O Descobrimento do Brasil foi em:",
                    options: ["1500", "1600", "1400", "1550"],
                    correctIndex: 0
                )
            ]
        ),

        // MARK: - Matemática
        QuizTheme(
            id: "matematica",
            title: "Matemática",
            questions: [
                .init(
                    prompt: "Quanto é 7 × 8?",
                    options: ["54", "56", "64", "58"],
                    correctIndex: 1
                ),
                .init(
                    prompt: "Quanto é 9 + 6?",
                    options: ["12", "13", "15", "16"],
                    correctIndex: 2
                ),
                .init(
                    prompt: "Quanto é 12 ÷ 3?",
                    options: ["2", "3", "4", "6"],
                    correctIndex: 2
                ),
                .init(
                    prompt: "Qual é o valor aproximado de π?",
                    options: ["2,14", "3,14", "4,13", "1,34"],
                    correctIndex: 1
                ),
                .init(
                    prompt: "Quanto é 5²?",
                    options: ["10", "20", "25", "30"],
                    correctIndex: 2
                )
            ]
        ),

        // MARK: - Física
        QuizTheme(
            id: "fisica",
            title: "Física",
            questions: [
                .init(
                    prompt: "Qual é a unidade de medida de força no SI?",
                    options: ["Joule", "Newton", "Watt", "Pascal"],
                    correctIndex: 1
                ),
                .init(
                    prompt: "Qual é a velocidade da luz no vácuo (aprox.)?",
                    options: ["300 km/s", "3.000 km/s", "30.000 km/s", "300.000 km/s"],
                    correctIndex: 3
                ),
                .init(
                    prompt: "Qual lei relaciona força, massa e aceleração?",
                    options: [
                        "Lei da Gravitação",
                        "Primeira Lei de Newton",
                        "Segunda Lei de Newton",
                        "Terceira Lei de Newton"
                    ],
                    correctIndex: 2
                ),
                .init(
                    prompt: "Qual grandeza mede a resistência à passagem da corrente elétrica?",
                    options: ["Corrente", "Tensão", "Potência", "Resistência"],
                    correctIndex: 3
                ),
                .init(
                    prompt: "Qual é o símbolo da aceleração da gravidade?",
                    options: ["a", "v", "g", "m"],
                    correctIndex: 2
                )
            ]
        ),

        // MARK: - Geografia
        QuizTheme(
            id: "geografia",
            title: "Geografia",
            questions: [
                .init(
                    prompt: "Qual é o maior oceano do planeta?",
                    options: ["Atlântico", "Índico", "Ártico", "Pacífico"],
                    correctIndex: 3
                ),
                .init(
                    prompt: "Qual país possui a maior extensão territorial?",
                    options: ["Estados Unidos", "China", "Canadá", "Rússia"],
                    correctIndex: 3
                ),
                .init(
                    prompt: "Qual é a capital da Austrália?",
                    options: ["Sydney", "Melbourne", "Canberra", "Perth"],
                    correctIndex: 2
                ),
                .init(
                    prompt: "Em qual continente fica o Deserto do Saara?",
                    options: ["Ásia", "América", "África", "Oceania"],
                    correctIndex: 2
                ),
                .init(
                    prompt: "O Rio Amazonas deságua em qual oceano?",
                    options: ["Pacífico", "Atlântico", "Índico", "Ártico"],
                    correctIndex: 1
                )
            ]
        )
    ]
}
