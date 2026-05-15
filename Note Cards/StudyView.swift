//
//  StudyView.swift
//  Note Cards
//
//  Created by daniell Escareno on 5/14/26.
//

import SwiftUI

struct StudyView: View {
    let cards: [FlashCard]
    @State private var currentIndex = 0
    var body: some View {
        if cards.indices.contains(currentIndex) {
            VStack(spacing: 30) {
                FlashCardView(card: cards[currentIndex])
                HStack(spacing: 10) {
                    //help you decide if you know or dont know the cards
                    Button("Don't Know") {
                        nextCard()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    Button("Know") {
                        nextCard()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                // gives the user to go back if they need to
                HStack {
                    Button("Previous") {
                        if currentIndex > 0 {
                            currentIndex -= 1
                        }
                    }
                    Text("\(currentIndex + 1) / \(cards.count)")
                    // moves on to the rest cards
                    Button("Next") {
                        nextCard()
                    }
                }
            }
            // only shows if there are no cards made
        } else {
            Text("No cards available")
        }
    }
    // moves you to the next card if you know or dont know
    func nextCard() {
        if currentIndex < cards.count - 1 {
            currentIndex += 1
        }
    }
}
