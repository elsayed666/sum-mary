//
//  MockQuestions.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 23/07/2026.
//

final class MockQuestions {

    static func data() -> [Question] {

        return [

            Question(
                title: "Quanti utenti utilizzeranno il sistema?",
                answers: [

                    Answer(title: "Meno di 100", coefficient: 1.0),

                    Answer(title: "100 - 1000", coefficient: 1.2),

                    Answer(title: "Più di 1000", coefficient: 1.5)

                ]
            ),

            Question(
                title: "Serve un pannello amministratore?",
                answers: [

                    Answer(title: "No", coefficient: 1.0),

                    Answer(title: "Sì", coefficient: 1.3)

                ]
            )

        ]

    }

}
