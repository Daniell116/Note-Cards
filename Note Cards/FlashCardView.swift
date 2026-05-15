//
//  FlashCardView.swift
//  Note Cards
//
//  Created by stephanie rocha marquez on 5/14/26.
//

import SwiftUI
struct FlashCardView: View {
    var card: FlashCard
    @State private var showAnswer = false
    var body: some View {
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue.opacity(0.2))
                .frame(width: 300, height: 200)
                .overlay(
                    Text(showAnswer ? card.answer : card.question)
                        .font(.title)
                        .padding()
                )
                .onTapGesture {
                    showAnswer.toggle()
                }
            
            Text("Tap the card to flip ")
                .padding()
            Spacer()
        }
    }
}
#Preview {
    FlashCardView(card: FlashCard(
        question: "",
        answer: ""
    ))
}
