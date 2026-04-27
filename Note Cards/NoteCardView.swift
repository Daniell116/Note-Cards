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
        VStack {
            ZStack {
                // Control for the rectangle "note card"
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue.opacity(0.2))
                    .frame(width: 350, height: 200)
                Text(showAnswer ? answer : question)
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
            }
            .rotation3DEffect(
                .degrees(showAnswer ? 360 : 0),
                axis : (x:0, y: 1, z: 0)
            )
            // broken but will fix 
            .animation(.easeIn(duration: 0.6),value: showAnswer)
            .onTapGesture {
                showAnswer.toggle()
            }
            TextField("test", text: $question)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("answer here", text: $answer)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
       
    }
}

#Preview {
    NoteCardView(question: "", answer: "")
}
