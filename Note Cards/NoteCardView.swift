//
//  NoteCard View.swift
//  Note Cards
//
//  Created by daniell Escareno on 4/22/26.
//

import SwiftUI

struct NoteCardView: View {
    @State private var question = ""
    @State private var answer = ""
    @State private var showAnswer = false
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue.opacity(0.2))
                    .frame(height: 200)
                Text(question)
                    .font(.title)
                Text(showAnswer ? answer : question)
                    .font(.title)
                    .foregroundColor(.black)
                    .padding()
            }
            .rotation3DEffect(
                .degrees(showAnswer ? 180 : 0),
                axis : (x:0, y: 1, z: 0)
            )
            // broken but will fix 
            .animation(.easeIn(duration: 0.5),value: showAnswer)
            .onTapGesture {
                showAnswer.toggle()
            }
            TextField("test", text: $question)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("ansewr here", text: $answer)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
       
    }
}

#Preview {
    NoteCardView()
}
