//
//  NoteCard View.swift
//  Note Cards
//
//  Created by daniell Escareno on 4/22/26.
//

import SwiftUI

struct NoteCardView: View {
    @State private var question: String
    @State private var answer: String
    @State private var showAnswer = false
    init(question: String, answer: String) {
        self._question = State(initialValue: question)
        self._answer = State(initialValue: answer)
    }
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue.opacity(0.2))
                    .frame(width: 350, height: 200)

                if showAnswer {
                    Text(answer)
                        .font(.title)
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                } else {
                    Text(question)
                        .font(.title)
                }
            }
            .rotation3DEffect(
                .degrees(showAnswer ? 180 : 0),
                axis: (x: 0, y: 1, z: 0)
            )
            .animation(.easeInOut(duration: 0.5), value: showAnswer)
            .onTapGesture {
                showAnswer.toggle()
            }
            TextField("Enter question", text: $question)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Enter answer", text: $answer)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}
#Preview {
    NoteCardView(question: "", answer: "")
}
